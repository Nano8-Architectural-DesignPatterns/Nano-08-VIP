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
//MARK: TRANSFERE O REQUEST PARA O CORE DATA
extension NewRecipeInteractor: NewRecipeBusinessLogic  {
    func createRecipe(request: CreateRecipeRequest) {
        CoreDataWorker.shared.createRecipe(request: request)
        
        //MARK: MOSTRA O ALERTA APÓS A RECEITA SER CRIADA
        presenter?.presentNewRecipeDetail()
    }
    
}

