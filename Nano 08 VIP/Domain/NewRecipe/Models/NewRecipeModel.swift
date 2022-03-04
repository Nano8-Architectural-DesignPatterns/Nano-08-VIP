//
//  NewRecipeModel.swift
//  Nano 08 VIP
//
//  Created by Igor Samoel da Silva on 24/02/22.
//

import Foundation

struct CreateRecipeRequest {
    var name: String
    var desc: String
    var image: Data
    var ingredients: String
    var time: Int
    
}
