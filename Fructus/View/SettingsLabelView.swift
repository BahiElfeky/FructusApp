//
//  SettingsLabel.swift
//  Fructus
//
//  Created by Bahi El Feky on 5/30/21.
//

import SwiftUI

struct SettingsLabelView: View {
    
    //MARK:- Properties
    
    var labelText: String
    var labelImage: String
    
    
    //MARK:- Body
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK:- Preview

struct SettingsLabel_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
