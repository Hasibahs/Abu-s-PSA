//
//  LoginScreen.swift
//  SmartAisle
//
//  Created by Abu Hasib on 09/06/2024.
//

import SwiftUI

struct LoginScreen: View {
    @Binding var navigate: String
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.white, Color(red: 0.12, green: 0.51, blue: 0.68)]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                VStack {
                    Text("Welcome Back!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.bottom, 40)

                    VStack(spacing: 20) {
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(.black)
                            TextField("email@gmail.com", text: $email)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(30)
                                .keyboardType(.emailAddress)
                                .autocapitalization(.none)
                                .disableAutocorrection(true)
                        }
                        .padding(.horizontal)

                        HStack {
                            Image(systemName: "lock")
                                .foregroundColor(.black)
                            SecureField("********", text: $password)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(30)
                                .autocapitalization(.none)
                                .disableAutocorrection(true)
                        }
                        .padding(.horizontal)
                    }

                    Button(action: {
                        navigate = "HomeScreen"
                    }) {
                        Text("Login")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(30)
                    }
                    .padding(.top, 20)

                    Button(action: {
                        navigate = "ChangePasswordScreen"
                    }) {
                        Text("Forgot Password?")
                            .foregroundColor(.black)
                            .underline()
                            .padding(.top, 10)
                    }

                    Button(action: {
                        navigate = "RegistrationScreen"
                    }) {
                        Text("Create an Account")
                            .foregroundColor(.black)
                            .underline()
                            .padding(.top, 10)
                    }
                }
                .padding(20)
            )
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen(navigate: .constant("LoginScreen"))
    }
}

