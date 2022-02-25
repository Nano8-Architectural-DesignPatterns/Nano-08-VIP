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
        self.model.recipe = response
    }
    
    func fetchRecipe(id: UUID) {
        interactor?.loadRecipeDetail(id: id)
    }
}

struct RecipeDetailView: View {
    @ObservedObject var model: RecipeDetailModel = RecipeDetailModel()
    var interactor: ShowRecipeDetailBusinessLogic?
    var body: some View {
        ScrollView {
            Image(uiImage: model.recipe.image?.toUIImage() ?? UIImage(systemName: "person.fill")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 12)
            
            Text(model.recipe.name ?? "Sem nome")
                .padding(.bottom, 18)
                .font(.system(size: 40))
            
            VStack(alignment: .leading) {
                Text("Ingredientes: \(model.recipe.ingredients ?? "Sem ingredientes")")
                    .padding(.horizontal, 12)
                    .padding(.bottom, 12)
                
                Text("Modo de preparo: \(model.recipe.desc ?? "Sem descrição")")
                    .padding(.horizontal, 12)
                    .padding(.bottom, 12)

                Text("Tempo de preparo: \(Int(model.recipe.time))min")
                    .padding(.horizontal, 12)
                    .padding(.bottom, 12)
            }
        }
        .ignoresSafeArea(.all)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView()
    }
}
