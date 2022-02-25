//
//  NewRecipesInteractor.swift
//  Nano 08 VIP
//
//  Created by Victor Brito on 24/02/22.
//

import Foundation

protocol NewRecipeBusinessLogic {
    func createRecipe(request: CreateRecipeRequest)
}

class NewRecipeInteractor {
    var presenter: NewRecipePresentaionLogic?
}

extension NewRecipeInteractor: NewRecipeBusinessLogic  {
    func createRecipe(request: CreateRecipeRequest) {
        PersistenceController.shared.createRecipe(request: request)
        presenter?.presentNewRecipeDetail()
    }
    


}

