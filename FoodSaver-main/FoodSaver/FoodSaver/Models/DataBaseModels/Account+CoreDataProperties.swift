//
//  Account+CoreDataProperties.swift
//  FoodSaver
//
//  Created by Prashamsa on 02/10/22.
//  Copyright © 2022 freelancer12exp. All rights reserved.
//
//

import Foundation
import CoreData


extension Account {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Account> {
        return NSFetchRequest<Account>(entityName: "Account")
    }

    @NSManaged public var account_type: Int16
    @NSManaged public var password: String?
    @NSManaged public var status: Int16
    @NSManaged public var username: String?
    @NSManaged public var user: User?

}
