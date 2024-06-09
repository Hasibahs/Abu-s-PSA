//
//  ContentView.swift
//  SmartAisle
//
//  Created by Abu Hasib on 09/06/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var currentScreen: String = "WelcomeScreen"
    
    var body: some View {
        VStack {
            switch currentScreen {
            case "WelcomeScreen":
                WelcomeScreen(navigate: $currentScreen)
            case "LoginScreen":
                LoginScreen(navigate: $currentScreen)
            case "RegistrationScreen":
                RegistrationScreen(navigate: $currentScreen)
            case "EmailScreen":
                EmailScreen(navigate: $currentScreen)
            case "SearchScreen":
                SearchScreen(navigate: $currentScreen)
            case "ChangePasswordScreen":
                ChangePasswordScreen(navigate: $currentScreen)
            case "PairShoppingListScreen":
                PairShoppingListScreen(navigate: $currentScreen)
            case "HomeScreen":
                HomeScreen(navigate: $currentScreen)
            case "AdminPanelScreen":
                AdminPanelScreen(navigate: $currentScreen)
            case "SettingsScreen":
                SettingsScreen(navigate: $currentScreen)
            case "AboutScreen":
                AboutScreen(navigate: $currentScreen)
            default:
                WelcomeScreen(navigate: $currentScreen)
            }
        }
    }
}
