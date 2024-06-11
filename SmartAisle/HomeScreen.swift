//
//  HomeScreen.swift
//  SmartAisle
//
//  Created by Abu Hasib on 09/06/2024.
//

import SwiftUI

struct HomeScreen: View {
    @Binding var navigate: Screen

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Button(action: {
                    navigate = .home
                }) {
                    Image(systemName: "arrow.left")
                        .font(.title)
                        .foregroundColor(.black)
                }
                Spacer()
                Text("Home")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Spacer()
                // Empty spacer to balance the back button
                Spacer()
                    .frame(width: 40)
            }
            .padding(.top, 50)
            .padding(.horizontal)

            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Welcome User!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.bottom, 10)

                    Text("Weekly Deals")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
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
                        .foregroundColor(.black)
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
                .frame(maxWidth: .infinity, maxHeight: 80)
                .background(Color(red: 0.12, green: 0.51, blue: 0.68))
                .edgesIgnoringSafeArea(.bottom)
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color(red: 0.27, green: 0.5, blue: 0.64)]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(navigate: .constant(.home))
    }
}
