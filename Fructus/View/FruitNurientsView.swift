//
//  FruitNurientsView.swift
//  Fructus
//
//  Created by Bahi El Feky on 5/30/21.
//

import SwiftUI

struct FruitNurientsView: View {
    
    //MARK:- Properties
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Suger", "Fat", "Protien", "Vitamins",  "Minerals"]
    
    //MARK:- Body
    
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack{
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                            
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
//            Text(fruit.title)
        }//: Box
    }
}

//MARK:- Preview

struct FruitNurientsView_Previews: PreviewProvider {
    static var previews: some View {
        
        FruitNurientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
