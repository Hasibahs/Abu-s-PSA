//
//  EmailScreen.swift
//  SmartAisle
//
//  Created by Abu Hasib on 09/06/2024.
//

import SwiftUI

struct EmailScreen: View {
    @Binding var navigate: String
    @State private var email: String = ""

    var body: some View {
        VStack {
            Text("Pair Shopping List")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.bottom, 20)

            VStack {
                Text("Email Address")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.bottom, 10)

                TextField("email@gmail.com", text: $email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
            }
            .padding()
            .background(Color(red: 0.14, green: 0.48, blue: 0.63))
            .cornerRadius(10)
            .padding(.bottom, 20)

            Button(action: {
                navigate = "SearchScreen"
            }) {
                Text("Confirm")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(5)
            }
            .padding(.bottom, 10)

            Button(action: {
                navigate = "LoginScreen"
            }) {
                Text("Cancel")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .cornerRadius(5)
            }
            .padding(.bottom, 20)

            Spacer()
        }
        .background(Color(red: 0.12, green: 0.51, blue: 0.68))
        .edgesIgnoringSafeArea(.all)
        .padding(20)
    }
}

struct EmailScreen_Previews: PreviewProvider {
    static var previews: some View {
        EmailScreen(navigate: .constant("EmailScreen"))
    }
}

