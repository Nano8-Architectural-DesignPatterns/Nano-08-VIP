//
//  RecipeDetailView.swift
//  Nano 08 VIP
//
//  Created by Igor Samoel da Silva on 24/02/22.
//

import SwiftUI

protocol RecipeDetailDisplayLogic {
   mutating func displayRecipeDetail(response: Recipe)
}

extension RecipeDetailView: RecipeDetailDisplayLogic {
    mutating func displayRecipeDetail(response: Recipe) {
        self.recipe = response
    }
    
    func fetchRecipe(id: UUID) {
        interactor?.loadRecipeDetail(id: id)
    }
}

struct RecipeDetailView: View {
    @ObservedObject var recipe = Recipe()
    var interactor: ShowRecipeDetailBusinessLogic?
    var body: some View {
        ScrollView {
            VStack(spacing: 20){
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text(recipe.name ?? "Sem nome")
                    .font(.system(size: 40))
                HStack {
                    VStack (alignment: .leading, spacing: 20){
                        Text("Tempo: \(recipe.time) min")
                            .padding(.leading, 10)
                        Text("Ingredientes:")
                            .padding(.leading, 10)
                        Text(recipe.ingredients ?? "Sem ingredientes")
                            .padding(.leading, 30)
                        Text("Modo de preparo:")
                            .padding(.leading, 10)
                        Text(recipe.desc ?? "Sem descrição")
                            .padding(.leading, 30)
                    }
                }
            }
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView()
    }
}
