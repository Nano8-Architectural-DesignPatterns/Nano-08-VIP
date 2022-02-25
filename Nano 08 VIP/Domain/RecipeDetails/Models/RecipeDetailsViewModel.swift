//
//  RecipeDetailsViewModel.swift
//  Nano 08 VIP
//
//  Created by Douglas Figueirôa on 24/02/22.
//

import Foundation

class RecipeDetailsViewModel: Module{
    
    @Published var ingredient: Ingredient?
    
    func createIngredient(amount: Int, name: String, type: Int, recipe: Recipe) -> Bool{
        do{
            self.ingredient = try
            PersistenceController.shared.createIngredient(amount: amount, name: name, type: type, recipe: recipe)
            return true
        }catch{
            return false
        }
    }
    
    func save() {
        do{
            try PersistenceController.shared.save()
        }catch{
            
        }
    }
    
    func update() {
        objectWillChange.send()
    }
    
    
}
