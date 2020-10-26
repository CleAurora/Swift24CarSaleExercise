//
//  Cars.swift
//  CarSale
//
//  Created by Cleís Aurora Pereira on 26/10/20.
//

import Foundation
import UIKit

class Car{
    var name: String
    var image: String
    var ano: String

    init(name: String, image: String, ano: String) {
        self.ano = ano
        self.image = image
        self.name = name
    }
}
