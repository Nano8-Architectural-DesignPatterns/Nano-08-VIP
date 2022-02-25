//
//  Persistence.swift
//  Nano 08 VIP
//
//  Created by Felipe Brigagão de Almeida on 24/02/22.
//

import CoreData

struct PersistenceController {
    
    static var shared = PersistenceController()
    
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
    
    //MARK: - CREATE RECIPE METHOD
    mutating func createRecipe(desc: String, name: String, time: Int, ingredients: String, image: Data) -> Recipe {
        let recipe = Recipe(context: context)
        recipe.id = UUID()
        recipe.desc = desc
        recipe.name = name
        recipe.time = Int64(time)
        recipe.ingredients = ingredients
        recipe.image = image
        do {
            try save()
        } catch {
            
        }
        return recipe
    }
    
    
    //MARK: - FETCH METHOD
    mutating func fetchAllRecipes() -> [Recipe]{
        var recipes: [Recipe] = []
        
        do{
            recipes = try
            context.fetch(Recipe.fetchRequest())
        }catch{
            
        }
        return recipes
    }
    
    mutating func fetchRecipe(id: UUID, completion: (Recipe) -> Void) {
        let fetch = Recipe.fetchRequest()
        fetch.predicate = NSPredicate(format: "id == \(id.uuidString)")
        do {
            let recipes = try context.fetch(fetch)
            completion(recipes.first!)
        } catch {
            
        }
    }
    
    //MARK: - SAVE METHOD
    mutating func save() throws{
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                //TODO: Create error
            }
        }
    }
    
    //MARK: - DELETE METHOD
    mutating func deleteObject(object: NSManagedObject){
        context.delete(object)
        do{
            try save()
        }catch{
        }
    }
    
}
