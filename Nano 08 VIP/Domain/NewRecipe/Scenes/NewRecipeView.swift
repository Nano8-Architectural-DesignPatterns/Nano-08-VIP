//
//  NewRecipeView.swift
//  Nano 08 VIP
//
//  Created by Igor Samoel da Silva on 24/02/22.
//

import SwiftUI

protocol NewRecipelDisplayLogic {
    func displayRecipeDetail() //TODO: Criar parâmetro recebido do presenter
}

extension NewRecipeView: NewRecipelDisplayLogic {
    func displayRecipeDetail() {
        
    }
    
    func fetchRecipe(id: UUID) {
    
    }
}

//-
struct NewRecipeView: View {

    
    @State private var username: String = ""
    
    var interactor: NewRecipeBusinessLogic?
    
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Text("Nome")
                        .offset(x: -137)
                    TextField("", text: $username)
                        .frame(width: 343, height: 62)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color.black, lineWidth: 2)
                        )
                    //fgfgfg
                }
            }
            .padding(.bottom, 25)
            HStack{
                VStack{
                    Text("Ingredientes")
                        .offset(x: -117)
                    TextField("", text: $username)
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
                    PickerTimer()
                }
            }
            
        }

    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
