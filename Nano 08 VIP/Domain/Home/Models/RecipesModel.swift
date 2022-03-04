//
//  RecipesModel.swift
//  Nano 08 VIP
//
//  Created by Igor Samoel da Silva on 24/02/22.
//

import Foundation


class HomeViewModel: ObservableObject {
    @Published var allRecipes: [Recipe] = []
}
