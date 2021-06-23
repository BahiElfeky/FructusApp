//
//  FruitModel.swift
//  Fructus
//
//  Created by Bahi El Feky on 5/27/21.
//

import SwiftUI

//MARK:- Fruits Data Model


struct Fruit: Identifiable{
    
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var descreption: String
    var nutrition: [String]
    
    
}
