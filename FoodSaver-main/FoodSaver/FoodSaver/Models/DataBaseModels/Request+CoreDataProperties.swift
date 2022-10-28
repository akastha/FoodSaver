//
//  Request+CoreDataProperties.swift
//  FoodSaver
//
//  Created by Prashamsa on 02/10/22.
//  Copyright © 2022 freelancer12exp. All rights reserved.
//
//

import Foundation
import CoreData


extension Request {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Request> {
        return NSFetchRequest<Request>(entityName: "Request")
    }

    @NSManaged public var date: Date?
    @NSManaged public var quantity: Int16
    @NSManaged public var status: String?
    @NSManaged public var food: Food?
    @NSManaged public var requester: User?

}
