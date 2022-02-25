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
        let interactor = ShowHomeInteractor()
        let presenter = ShowHomePresenter()
        
        view.interactor = interactor
        interactor.presenter = presenter as! ShowHomeBusinessLogic
        presenter.view = view
        
        return view
    }
}
