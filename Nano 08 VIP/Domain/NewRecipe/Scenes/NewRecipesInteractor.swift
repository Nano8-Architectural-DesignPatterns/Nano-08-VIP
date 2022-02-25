//
//  NewRecipesInteractor.swift
//  Nano 08 VIP
//
//  Created by Victor Brito on 24/02/22.
//

import Foundation

protocol NewRecipeBusinessLogic {
    func loadRecipeDetail(id: UUID)
}

class NewRecipeInteractor {
    var presenter: NewRecipePresentaionLogic?
}

extension NewRecipeInteractor: NewRecipeBusinessLogic  {
    
    func loadRecipeDetail(id: UUID) {
        //TODO: PEGAR RECIPE DO CORE DATA USANDO id
    }
}
//-
