//
//  HomeConfigurator.swift
//  Nano 08 VIP
//
//  Created by Felipe Brigagão de Almeida on 24/02/22.
//

import Foundation
import SwiftUI

extension HomeView {
    
    func configureView() -> some View {
        var view = self
        let interactor = HomeInteractor()
        let presenter = HomePresenter()
        
        view.interactor = interactor
        interactor.presenter = presenter
        presenter.view = view
        return view
    }
}
