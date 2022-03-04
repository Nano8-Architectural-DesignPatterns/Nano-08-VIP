//
//  Data+toUIImage.swift
//  Nano 08 VIP
//
//  Created by Felipe Brigagão de Almeida on 25/02/22.
//

import Foundation
import UIKit

extension Data {
    func toUIImage() -> UIImage? {
        guard let image = UIImage(data: self) else {
            return nil
        }
        
        return image
    }
}
