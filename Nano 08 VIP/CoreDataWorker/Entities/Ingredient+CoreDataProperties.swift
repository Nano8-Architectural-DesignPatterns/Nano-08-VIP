//
//  Ingredient+CoreDataProperties.swift
//  Nano 08 VIP
//
//  Created by Igor Samoel da Silva on 24/02/22.
//
//

import Foundation
import CoreData


extension Ingredient {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ingredient> {
        return NSFetchRequest<Ingredient>(entityName: "Ingredient")
    }

    @NSManaged public var name: String?
    @NSManaged public var amount: Int64
    @NSManaged public var type: Int64
    @NSManaged public var recipe: Recipe?

}

extension Ingredient : Identifiable {

}
