//
//  RecipeDetailsConfigurator.swift
//  Nano 08 VIP
//
//  Created by Igor Samoel da Silva on 24/02/22.
//

import Foundation
import SwiftUI

extension RecipeDetailView {
    
    func configureView() -> some View {
        var view = self
        let interactor = ShowRecipeDetailInteractor()
        let presenter = ShowRecipeDetailPresenter()
        view.interactor = interactor
        interactor.presenter = presenter
        presenter.view = view
        return view
    }
}
