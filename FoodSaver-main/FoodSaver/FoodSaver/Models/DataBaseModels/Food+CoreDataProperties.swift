//
//  Food+CoreDataProperties.swift
//  FoodSaver
//
//  Created by Prashamsa on 02/10/22.
//  Copyright © 2022 freelancer12exp. All rights reserved.
//
//

import Foundation
import CoreData


extension Food {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Food> {
        return NSFetchRequest<Food>(entityName: "Food")
    }

    @NSManaged public var desc: String?
    @NSManaged public var dislike: Int16
    @NSManaged public var donatedQuantity: Int16
    @NSManaged public var image: Data?
    @NSManaged public var isVeg: Bool
    @NSManaged public var likes: Int16
    @NSManaged public var postDate: Date?
    @NSManaged public var quantity: Int16
    @NSManaged public var title: String?
    @NSManaged public var donar: User?
    @NSManaged public var receiver: User?
    @NSManaged public var reviews: NSSet?
    @NSManaged public var requests: NSSet?

}

// MARK: Generated accessors for reviews
extension Food {

    @objc(addReviewsObject:)
    @NSManaged public func addToReviews(_ value: Review)

    @objc(removeReviewsObject:)
    @NSManaged public func removeFromReviews(_ value: Review)

    @objc(addReviews:)
    @NSManaged public func addToReviews(_ values: NSSet)

    @objc(removeReviews:)
    @NSManaged public func removeFromReviews(_ values: NSSet)

}

// MARK: Generated accessors for requests
extension Food {

    @objc(addRequestsObject:)
    @NSManaged public func addToRequests(_ value: Request)

    @objc(removeRequestsObject:)
    @NSManaged public func removeFromRequests(_ value: Request)

    @objc(addRequests:)
    @NSManaged public func addToRequests(_ values: NSSet)

    @objc(removeRequests:)
    @NSManaged public func removeFromRequests(_ values: NSSet)

}
