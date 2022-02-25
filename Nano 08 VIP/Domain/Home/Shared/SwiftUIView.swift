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
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .fontWeight(.semibold)
                .padding(.bottom, 8)
            
            Text(desc)
                .padding(.bottom, 12)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
            
            HStack {
                Text("\(time)")
                    .font(.caption)
            }
        }
        .padding()
        .background(
         RoundedRectangle(cornerRadius: 15)
            .stroke()
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
