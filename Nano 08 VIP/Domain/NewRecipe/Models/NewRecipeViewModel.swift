//
//  NewRecipeViewModel.swift
//  Nano 08 VIP
//
//  Created by Douglas Figueirôa on 24/02/22.
//

import Foundation

protocol Module: ObservableObject{
    func save()
    func update()
}

class NewRecipeViewModel: Module{
    
    @Published var recipe: Recipe?
    
    func createRecipe(name: String, desc: String, time: Int) -> Bool{
        do{
            self.recipe = try
            PersistenceController.shared.createRecipe(desc: desc, name: name, time: time)
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
