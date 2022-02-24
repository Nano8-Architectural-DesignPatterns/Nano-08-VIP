//
//  RecipeDetailView.swift
//  Nano 08 VIP
//
//  Created by Igor Samoel da Silva on 24/02/22.
//

import SwiftUI

protocol RecipeDetailDisplayLogic {
    func displayRecipeDetail() //TODO: Criar parâmetro recebido do presenter
}

extension RecipeDetailView: RecipeDetailDisplayLogic {
    func displayRecipeDetail() {
        
    }
    
    func fetchRecipe(id: UUID) {
    
    }
}

struct RecipeDetailView: View {
    var interactor: ShowRecipeDetailBusinessLogic?
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                fetchRecipe(id: UUID()) //TODO: Passar 
            }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView()
    }
}
