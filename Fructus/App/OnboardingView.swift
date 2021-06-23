//
//  OnboardingView.swift
//  Fructus
//
//  Created by Bahi El Feky on 5/23/21.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK:- BODY
    var body: some View {
        TabView{
            ForEach(fruits[0..<5]){ item in
                FruitCardView(fruit: item)
            }//: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: PPREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
