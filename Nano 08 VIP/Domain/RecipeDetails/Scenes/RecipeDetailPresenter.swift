//
//  RecipeDetailPresenter.swift
//  Nano 08 VIP
//
//  Created by Igor Samoel da Silva on 24/02/22.
//

import Foundation


protocol ShowRecipeDetailPresentaionLogic {
    func presentRecipeDetail(recipe: Recipe)
}

class ShowRecipeDetailPresenter {
    var view: RecipeDetailDisplayLogic?
}

extension ShowRecipeDetailPresenter: ShowRecipeDetailPresentaionLogic {
    func presentRecipeDetail(recipe: Recipe) {
        view?.displayRecipeDetail(response: recipe)
    }
    
}
