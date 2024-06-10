//
//  Footer.swift
//  SmartAisle
//
//  Created by Abu Hasib on 09/06/2024.
//

import SwiftUI

struct Footer: View {
    @Binding var navigate: String
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                navigate = "MenuScreen"
            }) {
                Image(systemName: "line.horizontal.3")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundColor(.black)
            }
            Spacer()
            Button(action: {
                navigate = "ARScreen"
            }) {
                Image(systemName: "camera")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundColor(.black)
            }
            Spacer()
            Button(action: {
                navigate = "SearchScreen"
            }) {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundColor(.black)
            }
            Spacer()
            Button(action: {
                navigate = "SettingsScreen"
            }) {
                Image(systemName: "gearshape")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundColor(.black)
            }
            Spacer()
        }
        .frame(height: 60)
        .background(Color(red: 0.12, green: 0.51, blue: 0.68))
        .overlay(
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.black),
            alignment: .top
        )
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer(navigate: .constant("Footer"))
    }
}
