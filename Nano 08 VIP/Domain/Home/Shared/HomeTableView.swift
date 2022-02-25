//
//  HomeTableView.swift
//  Nano 08 VIP
//
//  Created by Felipe Brigagão de Almeida on 24/02/22.
//

import SwiftUI

struct HomeTableView: View {
    
    var title: String
    var desc: String
    var time: Int
    var image: Data?
    
    var body: some View {
        HStack {
            Image(uiImage: image?.toUIImage() ?? UIImage(systemName: "questionmark.circle")!)
                .resizable()
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 6, height: 6)))
                .frame(width: 100, height: 100)
            VStack(alignment: .leading) {
                Text(title)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .padding(.bottom, 8)
                
                Text(desc)
                    .foregroundColor(.black)
                    .padding(.bottom, 12)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
                HStack {
                    Text("Tempo de preparo: \(time) minutos")
                        .foregroundColor(.black)
                        .font(.caption)
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width - 60, height: 100, alignment: .leading)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .stroke(.black, lineWidth: 2)
        )
    }
}

struct HomeTableView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTableView(title: "Feijoada", desc: "Adiciona algo", time: 60)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
