//
//  SettingsView.swift
//  Fructus
//
//  Created by Bahi El Feky on 5/30/21.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK:- Properties
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK:- Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    //MARK:- Section 1
                    
                    GroupBox(label:
                                HStack {
                                    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                                    
                                }
                    ){
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat. sodium, and calaories. None have colesterol. Fruits area sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                        }
                        
                    }
                    
                    //MARK:- Section 2
                    
                    GroupBox(label: SettingsLabelView(labelText: "Configurations", labelImage: "paintbtush")){
                        Divider().padding(.vertical, 4)
                        Text("If you wish to restart the app you should toggle the switch so you can see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 16)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    }
                    
                    
                    //MARK:- Section 3
                    
                    GroupBox(
                    label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        SettingsRowView(name: "Developer", content: "Bahi Elfeky")
                        SettingsRowView(name: "Designer", content: "Bahi Elfeky")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLable: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Facebook", linkLable: "@Bahielfeky", linkDestination: "facebook.com/bahi.elfeky/")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        
                        
                    }
                }//: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }) {
                                            Image(systemName: "xmark")
                                        })
                .padding()
            }//: Scroll
        }//: NAVIGATION
    }
}

//MARK:- Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
