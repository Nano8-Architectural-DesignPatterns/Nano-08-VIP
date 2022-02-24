//
//  Persistence.swift
//  Nano 08 VIP
//
//  Created by Felipe Brigagão de Almeida on 24/02/22.
//

import CoreData

struct PersistenceController {
    
    static let shared = PersistenceController()
    
    private let context: NSManagedObjectContext

    init() {
        let container = NSPersistentContainer(name: "nano08")
        container.viewContext.automaticallyMergesChangesFromParent = true
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        context = container.viewContext
    }
    
    
    mutating func save() {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                //TODO: Create error
            }
        }
    }
}
