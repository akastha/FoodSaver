//
//  Constantis.swift
//  FoodSaver
//
//  Created by Prashamsa on 18/09/22.
//  Copyright © 2022 freelancer12exp. All rights reserved.
//

import Foundation

enum Gender: Int, CaseIterable {
    case Male = 0
    case Female
    case Organization
    
    func displayString() -> String {
        switch self {
        case .Male:
            return NSLocalizedString("Male", comment: "Male")
        case .Female:
            return NSLocalizedString("Female", comment: "Female")
        case .Organization:
            return NSLocalizedString("Organization", comment: "Organization")
        }
    }
    
    static func valueFrom(string: String) -> Gender {
        switch string {
        case NSLocalizedString("Male", comment: "Male"):
            return .Male
        case NSLocalizedString("Female", comment: "Female"):
            return .Female
        case NSLocalizedString("Organization", comment: "Organization"):
            return .Organization
        default:
            return .Organization
        }
    }
}

enum AccountType: Int, CaseIterable {
    case Donar = 0
    case Receiver
    
    func displayString() -> String {
        switch self {
        case .Donar:
            return NSLocalizedString("Donar", comment: "Donar")
        case .Receiver:
            return NSLocalizedString("Receiver", comment: "Receiver")
        }
    }
    
    static func valueFrom(string: String) -> AccountType {
        switch string {
        case NSLocalizedString("Donar", comment: "Donar"):
            return .Donar
        case NSLocalizedString("Receiver", comment: "Receiver"):
            return .Receiver
        default:
            return .Receiver
        }
    }
}

enum AccountStatus: Int {
    case Active = 0
    case Inactive
}
