//
//  NewRecipeView.swift
//  Nano 08 VIP
//
//  Created by Igor Samoel da Silva on 24/02/22.
//

import SwiftUI

protocol NewRecipelDisplayLogic {
    mutating func newRecipeShowAlert()
}

extension NewRecipeView: NewRecipelDisplayLogic {
    mutating func newRecipeShowAlert() {
        showAlert.show = true
    }
    
    func createRecipe() {
        let request = CreateRecipeRequest(name: name, desc: desc, image: imageData!, ingredients: ingredients, time: picker.selections.first!)
        interactor?.createRecipe(request: request)
    }
}

struct NewRecipeView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var name: String = ""
    @State private var ingredients: String = ""
    @State private var desc: String = ""
    @State private var imageData: Data?
    @State private var showingImagePicker = false
    @ObservedObject var showAlert = AlertFunction()
    private var picker = PickerTimer()
    var interactor: NewRecipeBusinessLogic?
    
    var body: some View {
        VStack{
            VStack(alignment: .center) {
                Image(uiImage: imageData?.toUIImage() ?? UIImage(systemName: "person")!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .frame(width: 80, height: 80)
                
                Button {
                    showingImagePicker = true
                } label: {
                    Text("Adicionar foto")
                }
                .padding(.vertical, 8)
            }
            HStack{
                VStack(alignment: .leading) {
                    
                    Text("Nome")
                        
                    TextField("", text: $name)
                        .frame(width: 343, height: 45)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color.black, lineWidth: 2)
                        )
                }
            }
            .padding(.bottom, 12)
            HStack{
                VStack(alignment: .leading) {
                    Text("Ingredientes")
                        
                    TextField("", text: $ingredients)
                        .frame(width: 343, height: 85)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color.black, lineWidth: 2)
                        )
                }
            }
            .padding(.bottom, 12)
            HStack{
                VStack(alignment: .leading) {
                    Text("Modo de preparo")

                    TextField("", text: $desc)
                        .frame(width: 343, height: 85)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color.black, lineWidth: 2)
                        )
                }
            }
            .padding(.bottom, 12)
            HStack{
                VStack(alignment: .leading) {
                    Text("Tempo de preparo")
                        
                    picker.frame(width: UIScreen.main.bounds.width - 60, height: 150, alignment: .center)
                }
            }
        }
        .sheet(isPresented: $showingImagePicker) {
            ImagePicker(imageData: $imageData)
        }
        .alert(Text("Receita salva!"), isPresented: $showAlert.show, actions: {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("OK")
            }

        })
        .navigationBarItems(trailing:
            Button("Salvar", action: {
              createRecipe()
            })
        )
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
