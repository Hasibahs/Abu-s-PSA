import SwiftUI

struct ChangePasswordScreen: View {
    @Binding var navigate: String
    @State private var oldPassword: String = ""
    @State private var newPassword: String = ""
    @State private var showAlert: Bool = false

    var body: some View {
        VStack {
            Text("Change Password")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.bottom, 20)

            VStack(spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Old Password")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.bottom, 10)

                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(.black)
                        SecureField("********", text: $oldPassword)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(30)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                    }
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
                }
                .padding()
                .background(Color(red: 0.14, green: 0.48, blue: 0.63))
                .cornerRadius(10)

                VStack(alignment: .leading) {
                    Text("New Password")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.bottom, 10)

                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(.black)
                        SecureField("********", text: $newPassword)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(30)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                    }
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
                }
                .padding()
                .background(Color(red: 0.14, green: 0.48, blue: 0.63))
                .cornerRadius(10)
            }
            .padding(.bottom, 20)

            Button(action: {
                // Handle password change
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
                Alert(title: Text("Password Changed"), message: Text("Your password has been successfully changed."), dismissButton: .default(Text("OK")))
            }

            Button(action: {
                navigate = "ProfileScreen"
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
        .padding(20)
    }
}

struct ChangePasswordScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordScreen(navigate: .constant("ChangePasswordScreen"))
    }
}
