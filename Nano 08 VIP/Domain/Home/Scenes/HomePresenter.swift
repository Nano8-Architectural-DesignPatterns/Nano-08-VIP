//
//  HomePresenter.swift
//  Nano 08 VIP
//
//  Created by Felipe Brigagão de Almeida on 24/02/22.
//

import Foundation

protocol HomePresentationLogic {
    func presentHome(allRecipes: [Recipe])
}

class HomePresenter {
    var view: HomeDisplayLogic?
}

extension HomePresenter: HomePresentationLogic {
    func presentHome(allRecipes: [Recipe]) {
        view?.displayHome(response: allRecipes)
    }
}
