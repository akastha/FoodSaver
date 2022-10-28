//
//  SignUpViewModel.swift
//  FoodSaver
//
//  Created by Prashamsa on 01/10/22.
//  Copyright © 2022 freelancer12exp. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

class SignUpViewModel {
    
    var username = Observable("")
    var password = Observable("")
    var confirmPassword = Observable("")
    var accountType = Observable(AccountType.Donar)
    var firstname = Observable("")
    var lastname = Observable("")
    var gender = Observable(Gender.Male)
    var address = Observable("")
    var latLong = Observable(CLLocationCoordinate2D())
    var aboutMe = Observable("")
    var photo: Observable<UIImage?> = Observable(nil)
    var phone = Observable("")
    var email = Observable("")
    
    var validationError = ""
    
    func isValide(completion: @escaping((Bool) -> ())) {
        guard username.value.isEmpty == false else {
            validationError = NSLocalizedString("Username should not be empty.", comment: "Username should not be empty.")
            return completion(false)
        }
        
        guard password.value.isEmpty == false else {
            validationError = NSLocalizedString("Password should not be empty.", comment: "Password should not be empty.")
            return completion(false)
        }
        
        guard password.value == confirmPassword.value else {
            validationError = NSLocalizedString("Password and Confirm Password should be equal.", comment: "Password and Confirm Password should be equal.")
            return completion(false)
        }
        
        guard firstname.value.isEmpty == false else {
            validationError = NSLocalizedString("Firstname should not be empty.", comment: "Firstname should not be empty.")
            return completion(false)
        }
        
        guard address.value.isEmpty == false else {
            validationError = NSLocalizedString("Address should not be empty.", comment: "Address should not be empty.")
            return completion(false)
        }
        
        guard email.value.isEmpty == true, Utilities.isValidEmail(email.value) == false else {
            validationError = NSLocalizedString("Please enter proper email ID.", comment: "Please enter proper email ID.")
            return completion(false)
        }
        
        if DBManager.manager.accountForUsername(username: username.value) != nil {
            validationError = NSLocalizedString("Username already existed. Please try other username.", comment: "Username already existed. Please try other username.")
            return completion(false)
        }
        
        validateAddress { (result) in
            guard self.latLong.value.longitude != 0.0, self.latLong.value.latitude != 0.0 else {
                self.validationError = NSLocalizedString("Please enter complete address.", comment: "Please enter complete address.")
                return completion(false)
            }
            self.validationError = ""
            completion(true)
        }
    }
    
    func save(completion: @escaping((Bool) -> Void)) {
        isValide { (result) in
            guard result == true else {
                return completion(false)
            }
            
            if let account = DBManager.manager.newEntity(entity: .Account) as? Account,
                let user = DBManager.manager.newEntity(entity: .User) as? User {
                account.username = self.username.value
                account.password = self.password.value
                account.account_type = Int16(self.accountType.value.rawValue)
                account.status = Int16(AccountStatus.Active.rawValue)
                
                user.firstname = self.firstname.value
                user.lastname = self.lastname.value
                user.gender = Int16(self.gender.value.rawValue)
                user.aboutMe = self.aboutMe.value
                user.address = self.address.value
                user.latitude = self.latLong.value.latitude
                user.longitude = self.latLong.value.longitude
                user.phone = self.phone.value
                user.email = self.email.value
                user.photo = self.photo.value?.pngData() as NSObject?
                
                account.user = user
                
                DBManager.manager.saveContext()
            }
            completion(true)
        }
    }
    
    func validateAddress(completion: ((Bool) -> ())?) {
        guard address.value.isEmpty == false else {
            completion?(false)
            return
        }
        
        let geoCode = CLGeocoder()
        geoCode.geocodeAddressString(address.value) { (placemarks, error) in
            guard let placemark = placemarks?.first else {
                self.latLong.value = CLLocationCoordinate2D()
                completion?(false)
                return
            }
            self.latLong.value = placemark.location?.coordinate ?? CLLocationCoordinate2D()
            completion?(true)
        }
    }
}

fileprivate extension SignUpViewModel {
    
}
