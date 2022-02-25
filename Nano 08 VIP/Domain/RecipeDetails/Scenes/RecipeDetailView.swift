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
            VStack{
                Image(uiImage: model.recipe.image?.toUIImage() ?? UIImage(systemName: "person.fill")!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height/1.4)
                    
                Text(model.recipe.name ?? "Sem nome")
                    .font(.system(size: 40))
                HStack {
                    VStack (alignment: .leading, spacing: 20){
                        Text("Tempo: \(model.recipe.time) min")
                            .padding(.leading, 10)
                        Text("Ingredientes:")
                            .padding(.leading, 10)
                        Text(model.recipe.ingredients ?? "Sem ingredientes")
                            .padding(.leading, 30)
                        Text("Modo de preparo:")
                            .padding(.leading, 10)
                        Text(model.recipe.desc ?? "Sem descrição")
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
