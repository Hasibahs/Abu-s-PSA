//
//  SearchScreen.swift
//  SmartAisle
//
//  Created by Abu Hasib on 09/06/2024.
//

import SwiftUI

struct SearchScreen: View {
    @Binding var navigate: String
    @State private var searchText: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Search")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(action: {
                    navigate = "HomeScreen"
                }) {
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .foregroundColor(.black)
                }
            }
            .padding()
            
            TextField("Search...", text: $searchText)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .padding(.horizontal)
            
            VStack {
                ForEach(0..<6) { _ in
                    Rectangle()
                        .fill(Color(red: 0.14, green: 0.48, blue: 0.63))
                        .frame(height: 100)
                        .cornerRadius(10)
                        .padding(.vertical, 5)
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            Footer(navigate: $navigate)
                .padding(.bottom, 20)
        }
        .background(Color(red: 0.12, green: 0.51, blue: 0.68))
        .edgesIgnoringSafeArea(.all)
    }
}

struct SearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchScreen(navigate: .constant("SearchScreen"))
    }
}

