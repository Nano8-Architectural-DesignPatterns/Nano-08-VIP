//
//  HomeInteractor.swift
//  Nano 08 VIP
//
//  Created by Felipe Brigagão de Almeida on 24/02/22.
//

import Foundation

protocol HomeBusinessLogic {
    func loadAllRecipes()
}

class HomeInteractor {
    var presenter: HomePresentationLogic?
}

extension HomeInteractor: HomeBusinessLogic {
    func loadAllRecipes() {
        let recipes = HomeViewModel()
        recipes.allRecipes = PersistenceController.shared.fetchAllRecipes()
        presenter?.presentHome(viewModel: recipes)
    }
}
