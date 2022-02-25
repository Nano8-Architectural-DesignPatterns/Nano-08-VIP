//
//  HomeTableView.swift
//  Nano 08 VIP
//
//  Created by Felipe Brigagão de Almeida on 24/02/22.
//

import SwiftUI

struct HomeTableView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Nome da Receita")
                .fontWeight(.semibold)
                .padding(.bottom, 8)
            
            Text("Descrição da receita falando sobre ingredientes etc e tal, tô colocando tanto texto assim só pra testar o lineLimit fixado pra não passar de duas linhas, mano a WWIII tá chegando aí cuidado com os drone que joga vodka e depois acende o fósforo que isso daí é contra indicado em caso de suspeitas de dengue.")
                .padding(.bottom, 12)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
            
            HStack {
                Text("Tempo de preparo: duas guerra")
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
        HomeTableView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
