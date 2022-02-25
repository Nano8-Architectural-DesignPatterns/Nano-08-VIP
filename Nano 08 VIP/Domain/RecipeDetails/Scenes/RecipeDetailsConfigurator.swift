//
//  RecipeDetailsConfigurator.swift
//  Nano 08 VIP
//
//  Created by Igor Samoel da Silva on 24/02/22.
//

import Foundation
import SwiftUI

extension RecipeDetailView {
    
    func configureView(id: UUID? = nil) -> some View {
        var view = self
        let interactor = ShowRecipeDetailInteractor()
        let presenter = ShowRecipeDetailPresenter()
        view.interactor = interactor
        interactor.presenter = presenter
        presenter.view = view
        if let id = id {
            view.fetchRecipe(id: id)
        }
        return view
    }
}
