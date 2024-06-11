import SwiftUI
import Firebase

@main
struct SmartAisleApp: App {
    // Register AppDelegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @State private var currentScreen: Screen = .welcome
    
    var body: some Scene {
        WindowGroup {
            Group {
                switch currentScreen {
                case .welcome:
                    WelcomeScreen(navigate: $currentScreen)
                case .login:
                    LoginScreen(navigate: $currentScreen)
                case .registration:
                    RegistrationScreen(navigate: $currentScreen)
                case .forgotPassword:
                    ForgotPasswordScreen(navigate: $currentScreen)
                case .home:
                    NavigationView {
                        HomeScreen(navigate: $currentScreen)
                    }
                case .about:
                    AboutScreen(navigate: $currentScreen)
                case .adminPanel:
                    AdminPanelScreen(navigate: $currentScreen)
                case .changePassword:
                    ChangePasswordScreen(navigate: $currentScreen)
                case .emailScreen:
                    EmailScreen(navigate: $currentScreen)
                case .pairShoppingList:
                    PairShoppingListScreen(navigate: $currentScreen)
                case .search:
                    SearchScreen(navigate: $currentScreen)
                case .settings:
                    SettingsScreen(navigate: $currentScreen)
                
                }
            }
        }
    }
}