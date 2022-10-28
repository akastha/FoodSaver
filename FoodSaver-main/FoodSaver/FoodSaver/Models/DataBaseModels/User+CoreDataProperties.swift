//
//  User+CoreDataProperties.swift
//  FoodSaver
//
//  Created by Prashamsa on 02/10/22.
//  Copyright © 2022 freelancer12exp. All rights reserved.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var aboutMe: String?
    @NSManaged public var address: String?
    @NSManaged public var email: String?
    @NSManaged public var firstname: String?
    @NSManaged public var gender: Int16
    @NSManaged public var lastname: String?
    @NSManaged public var latitude: Double
    @NSManaged public var longitude: Double
    @NSManaged public var phone: String?
    @NSManaged public var photo: NSObject?
    @NSManaged public var account: Account?
    @NSManaged public var donatedFoods: NSSet?
    @NSManaged public var myRequests: NSSet?
    @NSManaged public var receivedFoods: NSSet?
    @NSManaged public var reviews: NSSet?

}

// MARK: Generated accessors for donatedFoods
extension User {

    @objc(addDonatedFoodsObject:)
    @NSManaged public func addToDonatedFoods(_ value: Food)

    @objc(removeDonatedFoodsObject:)
    @NSManaged public func removeFromDonatedFoods(_ value: Food)

    @objc(addDonatedFoods:)
    @NSManaged public func addToDonatedFoods(_ values: NSSet)

    @objc(removeDonatedFoods:)
    @NSManaged public func removeFromDonatedFoods(_ values: NSSet)

}

// MARK: Generated accessors for myRequests
extension User {

    @objc(addMyRequestsObject:)
    @NSManaged public func addToMyRequests(_ value: Request)

    @objc(removeMyRequestsObject:)
    @NSManaged public func removeFromMyRequests(_ value: Request)

    @objc(addMyRequests:)
    @NSManaged public func addToMyRequests(_ values: NSSet)

    @objc(removeMyRequests:)
    @NSManaged public func removeFromMyRequests(_ values: NSSet)

}

// MARK: Generated accessors for receivedFoods
extension User {

    @objc(addReceivedFoodsObject:)
    @NSManaged public func addToReceivedFoods(_ value: Food)

    @objc(removeReceivedFoodsObject:)
    @NSManaged public func removeFromReceivedFoods(_ value: Food)

    @objc(addReceivedFoods:)
    @NSManaged public func addToReceivedFoods(_ values: NSSet)

    @objc(removeReceivedFoods:)
    @NSManaged public func removeFromReceivedFoods(_ values: NSSet)

}

// MARK: Generated accessors for reviews
extension User {

    @objc(addReviewsObject:)
    @NSManaged public func addToReviews(_ value: Review)

    @objc(removeReviewsObject:)
    @NSManaged public func removeFromReviews(_ value: Review)

    @objc(addReviews:)
    @NSManaged public func addToReviews(_ values: NSSet)

    @objc(removeReviews:)
    @NSManaged public func removeFromReviews(_ values: NSSet)

}
