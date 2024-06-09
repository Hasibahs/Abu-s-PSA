//
//  SettingsScreen.swift
//  SmartAisle
//
//  Created by Abu Hasib on 09/06/2024.
//

import SwiftUI

struct SettingsScreen: View {
    @Binding var navigate: String
    
    var body: some View {
        VStack {
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top, 50)
            
            Spacer()
            
            VStack(spacing: 20) {
                Button(action: {
                    navigate = "ChangePasswordScreen"
                }) {
                    Text("Change password")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black.opacity(0.45))
                        .cornerRadius(10)
                }
                
                Button(action: {
                    navigate = "PairShoppingListScreen"
                }) {
                    Text("Pair shopping lists")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black.opacity(0.45))
                        .cornerRadius(10)
                }
                
                Button(action: {
                    navigate = "AboutScreen"
                }) {
                    Text("About")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black.opacity(0.45))
                        .cornerRadius(10)
                }
            }
            .padding(.top, 100)
            .padding(.horizontal, 20)
            
            Spacer()
            
            Footer(navigate: $navigate)
                .padding(.bottom, 20)
        }
        .background(Color(red: 0.27, green: 0.5, blue: 0.64))
        .edgesIgnoringSafeArea(.all)
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen(navigate: .constant("SettingsScreen"))
    }
}
