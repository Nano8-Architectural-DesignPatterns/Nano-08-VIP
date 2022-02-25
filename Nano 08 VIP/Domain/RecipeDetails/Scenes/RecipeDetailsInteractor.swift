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
        PersistenceController.shared.fetchRecipe(id: id) { recipe in
            presenter?.presentRecipeDetail(recipe: recipe)
        }
    }
}

