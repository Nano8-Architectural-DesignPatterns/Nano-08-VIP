//
//  ContentView.swift
//  Nano 08 VIP
//
//  Created by Felipe Brigagão de Almeida on 24/02/22.
//

import SwiftUI
import CoreData

protocol HomeDisplayLogic {
    func displayHome(response: [Recipe])
}

extension HomeView: HomeDisplayLogic {
    func displayHome(response: [Recipe]) {
        recipes.allRecipes = response
        recipes.objectWillChange.send()
    }
    
    func fetchRecipes() {
        interactor?.loadAllRecipes()
    }
}

struct HomeView: View {
    var interactor: HomeBusinessLogic?
    @State var showCreateRecipe = false
    @ObservedObject var recipes = HomeViewModel()
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(recipes.allRecipes) { recipe in
                        NavigationLink {
                            RecipeDetailView()
                                .configureView(id: recipe.id)
                        } label: {
                            HomeTableView(title: recipe.name ?? " ", desc: recipe.desc ?? " ", time: Int(recipe.time))
                        }
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                        showCreateRecipe = true
                        } label: {
                            Image(systemName: "plus")
                                .foregroundColor(.primary)
                        }
                    }
                }
                .navigationTitle("Receitas")
                .padding()
            }
            .sheet(isPresented: $showCreateRecipe, onDismiss: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    fetchRecipes()
                }
            }, content: {
                NewRecipeView()
            })
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
