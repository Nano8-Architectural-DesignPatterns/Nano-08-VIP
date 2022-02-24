//
//  RecipeDetailsInteractor.swift
//  Nano 08 VIP
//
//  Created by Igor Samoel da Silva on 24/02/22.
//

import Foundation

protocol ShowRecipeDetailBusinessLogic {
    func loadRecipeDetail(id: UUID)
}

class ShowRecipeDetailInteractor {
    var presenter: ShowRecipeDetailPresentaionLogic?
}

extension ShowRecipeDetailInteractor: ShowRecipeDetailBusinessLogic {
    func loadRecipeDetail(id: UUID) {
        //TODO: PEGAR RECIPE DO CORE DATA USANDO id
    }
}

