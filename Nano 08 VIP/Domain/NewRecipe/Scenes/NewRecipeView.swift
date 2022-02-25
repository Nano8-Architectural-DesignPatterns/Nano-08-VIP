//
//  NewRecipeView.swift
//  Nano 08 VIP
//
//  Created by Igor Samoel da Silva on 24/02/22.
//

import SwiftUI

protocol NewRecipelDisplayLogic {
    func newRecipeDetail()
}

extension NewRecipeView: NewRecipelDisplayLogic {
    func newRecipeDetail() {
        
    }
    func createRecipe() {
        PersistenceController.shared.createRecipe(request: CreateRecipeRequest(name: name, desc: " ", image: Data(), ingredients: ingredientes, time: picker.selections.first!))
    }
}

struct NewRecipeView: View {
    
    @State private var name: String = ""
    @State private var ingredientes: String = ""
    private var picker = PickerTimer()
    var interactor: NewRecipeBusinessLogic?
    
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Text("Nome")
                        .offset(x: -137)
                    TextField("", text: $name)
                        .frame(width: 343, height: 62)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color.black, lineWidth: 2)
                        )
                }
            }
            .padding(.bottom, 25)
            HStack{
                VStack{
                    Text("Ingredientes")
                        .offset(x: -117)
                    TextField("", text: $ingredientes)
                        .frame(width: 343, height: 120)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color.black, lineWidth: 2)
                        )
                }
            }
            .padding(.bottom, 25)
            HStack{
                VStack{
                    Text("Tempo de preparo")
                        .offset(x: -92 )
                    picker
                }
            }.onDisappear {
                createRecipe()
                print("Salvando dados")
            }
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
