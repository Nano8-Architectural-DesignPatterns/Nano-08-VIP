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
    
    
    
    //MARK: - CREATE INGREDIENT METHOD
    mutating func createIngredient(amount: Int, name: String, type: Int, recipe: Recipe) throws -> Ingredient{
        let ingredient = Ingredient(context: context)
        
        ingredient.name = name
        ingredient.amount = Int64(amount)
        ingredient.type = Int64(type)
        ingredient.recipe = recipe
        
        try save()
        
        return ingredient
    }
    
    //MARK: - CREATE RECIPE METHOD
    mutating func createRecipe(desc: String, name: String, time: Int) throws -> Recipe{
        let recipe = Recipe(context: context)
        
        recipe.desc = desc
        recipe.name = name
        recipe.time = Int64(time)
        
        try save()
        
        return recipe
    }
    
    
    //MARK: - FETCH METHOD
    mutating func fecthAllRecipes() -> [Recipe]{
        var recipes: [Recipe] = []
        
        do{
            recipes = try
            context.fetch(Recipe.fetchRequest())
        }catch{
            
        }
        return recipes
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
    mutating func deleteObject(object: NSManagedObject) -> Bool{
        context.delete(object)
        do{
            try save()
            return true
        }catch{
            return false
        }
    }
    
}
