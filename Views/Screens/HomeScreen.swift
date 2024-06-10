//
//  HomeScreen.swift
//  SmartAisle
//
//  Created by Abu Hasib on 09/06/2024.
//

import SwiftUI

struct HomeScreen: View {
    @Binding var navigate: String

    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Welcome User!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom, 10)

                    Text("Weekly Deals")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom, 10)

                    VStack(spacing: 20) {
                        ForEach(0..<2) { _ in
                            HStack(spacing: 20) {
                                ForEach(0..<3) { _ in
                                    Rectangle()
                                        .fill(Color.gray)
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(10)
                                        .opacity(0.6)
                                }
                            }
                        }
                    }
                    .padding(.bottom, 20)

                    Text("Recently Purchased")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom, 10)

                    VStack(spacing: 20) {
                        ForEach(0..<2) { _ in
                            HStack(spacing: 20) {
                                ForEach(0..<3) { _ in
                                    Rectangle()
                                        .fill(Color.gray)
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(10)
                                        .opacity(0.6)
                                }
                            }
                        }
                    }
                }
                .padding()
            }

            Footer(navigate: $navigate)
        }
        .background(Color(red: 0.27, green: 0.5, blue: 0.64))
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(navigate: .constant("HomeScreen"))
    }
}

