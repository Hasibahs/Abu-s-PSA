//
//  AboutScreen.swift
//  SmartAisle
//
//  Created by Abu Hasib on 09/06/2024.
//

import SwiftUI

struct AboutScreen: View {
    @Binding var navigate: String

    var body: some View {
        VStack {
            VStack {
                Text("About")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 50)

                Spacer()

                VStack {
                    Image(systemName: "info.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .padding(.bottom, 40)

                    Text("Application Version")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)

                    Text("1.0.0")
                        .font(.body)
                        .foregroundColor(.white)
                        .padding(.top, 15)
                        .padding(.bottom, 30)
                        .multilineTextAlignment(.center)

                    Text("Copyright")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)

                    Text("NHL Stenden Hogeschool - 2024")
                        .font(.body)
                        .foregroundColor(.white)
                        .padding(.top, 15)
                        .padding(.bottom, 30)
                        .multilineTextAlignment(.center)

                    Text("Security Version")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)

                    Text("1.0.0")
                        .font(.body)
                        .foregroundColor(.white)
                        .padding(.top, 15)
                        .padding(.bottom, 30)
                        .multilineTextAlignment(.center)
                }
                .padding()
                .background(Color.black.opacity(0.45))
                .cornerRadius(10)
                .padding(.top, 20)
            }
            .padding(.horizontal)

            Spacer()

            Footer(navigate: $navigate)
                .padding(.bottom, 20)
        }
        .background(Color(red: 0.27, green: 0.5, blue: 0.64))
        .edgesIgnoringSafeArea(.all)
    }
}

struct AboutScreen_Previews: PreviewProvider {
    static var previews: some View {
        AboutScreen(navigate: .constant("AboutScreen"))
    }
}

