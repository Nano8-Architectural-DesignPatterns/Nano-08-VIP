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
//MARK: MOSTRA O ALERTA QUE A RECEITA FOI CRIADO
extension NewRecipePresenter: NewRecipePresentaionLogic {
    
    //MARK: É CHAMADO PELO INTERACTOR
    func presentNewRecipeDetail() {
        view?.newRecipeShowAlert()
    }

}
