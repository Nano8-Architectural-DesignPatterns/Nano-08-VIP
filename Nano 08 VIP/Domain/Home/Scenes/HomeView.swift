//
//  ContentView.swift
//  Nano 08 VIP
//
//  Created by Felipe Brigagão de Almeida on 24/02/22.
//

import SwiftUI
import CoreData

protocol HomeDisplayLogic {
    func displayHome()
}

extension HomeView: HomeDisplayLogic {
    func displayHome() {
        
    }
}

struct HomeView: View {
    // MARK: - PROPERTIES
    @State var cardShown: Bool = false
    @State var cardDismissal: Bool = false
    var interactor: ShowHomeBusinessLogic?
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(0..<6) {_ in
                        HomeTableView()
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            // TODO: Criar ação de adicionar uma receita.
                        } label: {
                            Image(systemName: "plus")
                                .foregroundColor(.blue)
                        }
                    }
                }
                .navigationTitle("Receitas")
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
