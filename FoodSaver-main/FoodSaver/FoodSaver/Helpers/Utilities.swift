//
//  Utilities.swift
//  FoodSaver
//
//  Created by Prashamsa on 18/09/22.
//  Copyright © 2022 freelancer12exp. All rights reserved.
//

import Foundation

class Utilities {
    static func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}
