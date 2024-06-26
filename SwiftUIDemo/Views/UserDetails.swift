//
//  UserDetails.swift
//  SwiftUIDemo
//
//  Created by Arvind Seth on 26/06/24.
//

import SwiftUI

struct UserDetails: View {
    @Environment(\.presentationMode) var presentationMode // Allows dismissing the current modal view programmatically.

    @State private var firstName: String
    @State private var lastName: String
    @Binding var users: [UserModel]
    @AppStorage("users") private var usersData: Data = Data()
    var user: UserModel?

    init(user: UserModel?, users: Binding<[UserModel]>) {
        self.user = user
        self._users = users
        _firstName = State(initialValue: user?.firstName ?? "")
        _lastName = State(initialValue: user?.lastName ?? "")
    }

    var body: some View {
        NavigationView {
            VStack() {
                Spacer().frame(height: 40) 
                TextField("First Name", text: $firstName)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 1))
                    .padding(.horizontal, 40)
                    .padding(.bottom, 10)

                TextField("Last Name", text: $lastName)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 1))
                    .padding(.horizontal, 40)
                    .padding(.bottom, 10)

                Button(action: {
                    saveUser()
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Save")
                        .frame(width: UIScreen.main.bounds.width * 0.7, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                Spacer()
            }
            .navigationTitle(user == nil ? "Add User" : "Edit User")
        }
    }

    private func saveUser() {
        let newUser = UserModel(firstName: firstName, lastName: lastName)
        if let existingUser = user, let index = users.firstIndex(where: { $0.id == existingUser.id }) {
            users[index] = newUser
        } else {
            users.append(newUser)
        }
        if let encoded = try? JSONEncoder().encode(users) {
            usersData = encoded
        }
    }
}
