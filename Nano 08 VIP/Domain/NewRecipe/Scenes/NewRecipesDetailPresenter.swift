//
//  NewRecipesDetailPresenter.swift
//  Nano 08 VIP
//
//  Created by Victor Brito on 24/02/22.
//

import Foundation

protocol NewRecipePresentaionLogic {
    func presentRecipeDetail() //TODO: Adicionar tipo recipe de response: Recipe
}

class NewRecipePresenter {
    var view: NewRecipelDisplayLogic?
}

extension NewRecipePresenter: NewRecipePresentaionLogic {
    func presentRecipeDetail() {
        //TODO: Apresentar View
        view?.displayRecipeDetail() //TODO: Passar o Recipe
    }

}
//-
