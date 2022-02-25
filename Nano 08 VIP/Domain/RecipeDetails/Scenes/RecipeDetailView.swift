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
                Text("Bolo de chocolate")
                    .font(.system(size: 40))
                HStack {
                    VStack (alignment: .leading, spacing: 20){
                        Text("Tempo: 60 min")
                            .padding(.leading, 10)
                        Text("Ingredientes:")
                            .padding(.leading, 10)
                        Text(" - Arroz \n - Feijão \n - Carne \n - Alface ")
                            .padding(.leading, 30)
                        Text("Modo de preparo:")
                            .padding(.leading, 10)
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
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
