//
//  Recipe+CoreDataProperties.swift
//  Nano 08 VIP
//
//  Created by Igor Samoel da Silva on 24/02/22.
//
//

import Foundation
import CoreData


extension Recipe {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Recipe> {
        return NSFetchRequest<Recipe>(entityName: "Recipe")
    }

    @NSManaged public var desc: String?
    @NSManaged public var image: Data?
    @NSManaged public var name: String?
    @NSManaged public var time: Int64
    @NSManaged public var ingredients: String?
    @NSManaged public var id: UUID?

}

extension Recipe : Identifiable {

}
