//
//  LoginView.swift
//  SwiftUIDemo
//
//  Created by Arvind Seth on 18/06/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isLoginValid: Bool = false
    @State private var showAlert: Bool = false

    var body: some View {
        VStack {
            Spacer()
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)
                .padding(.bottom, 50)

            Text("Login")
                .font(.largeTitle)
                .padding(.bottom, 20)

            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 1))
                .padding(.horizontal, 40)
                .padding(.bottom, 10)

            SecureField("Password", text: $password)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.blue, lineWidth: 1))
                .padding(.horizontal, 40)
                .padding(.bottom, 20)

            Button(action: {
                if !email.isEmpty && !password.isEmpty {
                    isLoginValid = true
                } else {
                    showAlert = true
                }
            }) {
                Text("Login")
                    .frame(width: UIScreen.main.bounds.width * 0.7, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Error"), message: Text("Please enter both email and password."), dismissButton: .default(Text("OK")))
            }

            Spacer()

            Button(action: {
                // No action for now
            }) {
                Text("Don't have an account? ")
                    .foregroundColor(.primary) +
                Text("Sign Up")
                    .foregroundColor(.blue)
                    .underline()
            }
            .padding(.bottom, 20)
        }
        .navigationDestination(isPresented: $isLoginValid) {
            HomeView()
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
