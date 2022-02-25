//
//  HomePresenter.swift
//  Nano 08 VIP
//
//  Created by Felipe Brigagão de Almeida on 24/02/22.
//

import Foundation

protocol ShowHomePresentationLogic {
    func presentHome()
}

class ShowHomePresenter {
    var view: HomeDisplayLogic?
}

extension ShowHomePresenter: ShowHomePresentationLogic {
    func presentHome() {
        // TODO: Apresentar View
        view?.displayHome()
    }
}
