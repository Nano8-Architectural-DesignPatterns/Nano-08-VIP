//
//  NewRecipesDetailPresenter.swift
//  Nano 08 VIP
//
//  Created by Victor Brito on 24/02/22.
//

import Foundation

protocol NewRecipePresentaionLogic {
    func presentNewRecipeDetail()
}

class NewRecipePresenter {
    var view: NewRecipelDisplayLogic?
}

extension NewRecipePresenter: NewRecipePresentaionLogic {
    func presentNewRecipeDetail() {
        view?.newRecipeDetail()
    }

}
