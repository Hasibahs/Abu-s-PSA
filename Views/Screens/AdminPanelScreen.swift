//
//  AdminPanelScreen.swift
//  SmartAisle
//
//  Created by Abu Hasib on 09/06/2024.
//

import SwiftUI

struct AdminPanelScreen: View {
    @Binding var navigate: String
    @State private var item: Item = Item(number: "", price: "", quantity: "")
    @State private var newItem: Item = Item(number: "", price: "", quantity: "")

    struct Item {
        var number: String
        var price: String
        var quantity: String
    }

    var body: some View {
        VStack {
            Text("Admin Panel")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)

            VStack {
                Text("Edit Products")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)

                TextField("Item #", text: $item.number)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .padding(.bottom, 10)

                TextField("Price", text: $item.price)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .padding(.bottom, 10)

                TextField("Quantity", text: $item.quantity)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .padding(.bottom, 10)

                HStack {
                    Button(action: {
                        handleDelete()
                    }) {
                        Text("Delete")
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                    }

                    Button(action: {
                        handleSave()
                    }) {
                        Text("Save")
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.gray)
                            .foregroundColor(.black)
                            .cornerRadius(5)
                    }
                }
                .padding(.top, 10)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .padding(.bottom, 20)

            VStack {
                Text("Add Products")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)

                TextField("Item #", text: $newItem.number)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .padding(.bottom, 10)

                TextField("Price", text: $newItem.price)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .padding(.bottom, 10)

                TextField("Quantity", text: $newItem.quantity)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .padding(.bottom, 10)

                Button(action: {
                    handleAdd()
                }) {
                    Text("Add")
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.gray)
                        .foregroundColor(.black)
                        .cornerRadius(5)
                }
                .padding(.top, 10)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)

            Footer(navigate: $navigate)
                .padding(.top, 20)
        }
        .background(Color(red: 0.53, green: 0.81, blue: 0.92))
        .edgesIgnoringSafeArea(.all)
        .padding(20)
    }

    private func handleDelete() {
        print("Deleting item number:", item.number)
    }

    private func handleSave() {
        print("Saving:", item)
    }

    private func handleAdd() {
        print("Adding:", newItem)
    }
}

struct AdminPanelScreen_Previews: PreviewProvider {
    static var previews: some View {
        AdminPanelScreen(navigate: .constant("AdminPanelScreen"))
    }
}

