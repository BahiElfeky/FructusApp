//
//  StartButtonView.swift
//  Fructus
//
//  Created by Bahi El Feky on 5/23/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK:- PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding : Bool?
    
    // MARK:- BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(lineWidth: 1.25, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            )
        }
        .accentColor(.white)
    }
}

// MARK:- PREVIEW

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
