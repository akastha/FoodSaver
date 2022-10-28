//
//  Review+CoreDataProperties.swift
//  FoodSaver
//
//  Created by Prashamsa on 02/10/22.
//  Copyright © 2022 freelancer12exp. All rights reserved.
//
//

import Foundation
import CoreData


extension Review {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Review> {
        return NSFetchRequest<Review>(entityName: "Review")
    }

    @NSManaged public var comment: String?
    @NSManaged public var numberOfRatings: Int16
    @NSManaged public var rating: Double
    @NSManaged public var food: Food?
    @NSManaged public var user: User?

}
