//
//  RegistrationScreen.swift
//  SmartAisle
//
//  Created by Abu Hasib on 09/06/2024.
//

import SwiftUI

struct RegistrationScreen: View {
    @Binding var navigate: String
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.white, Color(red: 0.12, green: 0.51, blue: 0.68)]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                VStack {	
                    Text("Let's get you started!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.bottom, 40)

                    VStack(spacing: 20) {
                        TextField("username", text: $username)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(30)
                            .multilineTextAlignment(.center)

                        TextField("email@gmail.com", text: $email)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(30)
                            .multilineTextAlignment(.center)
                            .keyboardType(.emailAddress)

                        SecureField("********", text: $password)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(30)
                            .multilineTextAlignment(.center)
                    }
                    .padding(.horizontal)

                    Button(action: {
                        navigate = "EmailScreen"
                    }) {
                        Text("Register")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(30)
                    }
                    .padding(.top, 20)

                    Button(action: {
                        navigate = "LoginScreen"
                    }) {
                        Text("Back to Login")
                            .foregroundColor(.white)
                            .padding(.top, 20)
                    }
                }
                .padding(20)
            )
    }
}

struct RegistrationScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationScreen(navigate: .constant("RegistrationScreen"))
    }
}

