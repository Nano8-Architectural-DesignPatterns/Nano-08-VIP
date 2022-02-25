//
//  NewRecipesConfigurator.swift
//  Nano 08 VIP
//
//  Created by Victor Brito on 24/02/22.
//

import Foundation
import SwiftUI

extension NewRecipeView {
    
    func configureView() -> some View {
        var view = self
        let interactor = NewRecipeInteractor()
        let presenter = NewRecipePresenter()
        view.interactor = interactor
        interactor.presenter = presenter
        presenter.view = view
        return view
    }
}
