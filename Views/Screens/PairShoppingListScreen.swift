import SwiftUI

struct PairShoppingListScreen: View {
    @Binding var navigate: String
    @State private var email: String = ""
    @State private var showAlert: Bool = false

    var body: some View {
        VStack {
            HStack {
                Text("Pair Shopping List")
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

            VStack {
                Text("Email Address")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.bottom, 10)

                HStack {
                    Image(systemName: "at")
                        .foregroundColor(.black)
                    TextField("email@gmail.com", text: $email)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(5)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(5)
            }
            .padding()
            .background(Color(red: 0.14, green: 0.48, blue: 0.63))
            .cornerRadius(10)
            .padding(.bottom, 20)

            Button(action: {
                // Handle confirm action
                showAlert = true
            }) {
                Text("Confirm")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(30)
            }
            .padding(.top, 5)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Email Submitted"), message: Text("Your email has been successfully submitted."), dismissButton: .default(Text("OK")))
            }

            Button(action: {
                navigate = "HomeScreen"
            }) {
                Text("Cancel")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .cornerRadius(30)
            }
            .padding(.top, 20)

            Spacer()

            Footer(navigate: $navigate)
                .padding(.bottom, 20)
        }
        .background(Color(red: 0.12, green: 0.51, blue: 0.68))
        .edgesIgnoringSafeArea(.all)
        .padding(.horizontal, 20)
    }
}

struct PairShoppingListScreen_Previews: PreviewProvider {
    static var previews: some View {
        PairShoppingListScreen(navigate: .constant("PairShoppingListScreen"))
    }
}
