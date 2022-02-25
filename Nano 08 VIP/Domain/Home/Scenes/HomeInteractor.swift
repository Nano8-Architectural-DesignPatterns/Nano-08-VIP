//
//  HomeInteractor.swift
//  Nano 08 VIP
//
//  Created by Felipe Brigagão de Almeida on 24/02/22.
//

import Foundation

protocol ShowHomeBusinessLogic {
    func loadAllRecipes()
}

class ShowHomeInteractor {
    var presenter: ShowHomeBusinessLogic?
}

extension ShowHomeInteractor: ShowHomeBusinessLogic {
    func loadAllRecipes() {
        // TODO: PEGAR TODOS OS RECIPES DO CORE DATA
    }
}
