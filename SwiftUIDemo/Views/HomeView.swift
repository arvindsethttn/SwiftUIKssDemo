//
//  HomeView.swift
//  SwiftUIDemo
//
//  Created by Arvind Seth on 18/06/24.
//

import SwiftUI

struct HomeView: View {
    @State private var showUserDetails = false
    @State private var selectedUser: UserModel?
    @AppStorage("users") private var usersData: Data = Data()
    @State private var users: [UserModel] = []

    var body: some View {
        NavigationView {
            NavigationStack {
                if users.isEmpty {
                    VStack {
                        Text("No users available")
                            .font(.title)
                            .padding(.bottom, 10)
                        Text("Click on + icon to add user")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                } else {
                    List {
                        ForEach(users) { user in
                            NavigationLink(destination: UserDetails(user: user, users: $users)) {
                                UserListItem(user: user)
                            }
                        }
                        .onDelete(perform: delete)
                    }
                }
            }
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        selectedUser = nil
                        showUserDetails = true
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showUserDetails) {
                UserDetails(user: selectedUser, users: $users)
            }
            .onAppear {
                loadUsers()
            }
        }
    }

    private func loadUsers() {
        if let decoded = try? JSONDecoder().decode([UserModel].self, from: usersData) {
            users = decoded
        }
    }

    private func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
        saveUsers()
    }

    private func saveUsers() {
        if let encoded = try? JSONEncoder().encode(users) {
            usersData = encoded
        }
    }
}

struct UserListItem: View {
    let user: UserModel

    var body: some View {
        HStack {
            Circle()
                .fill(Color.random)
                .frame(width: 50, height: 50)
                .overlay(
                    Text(String(user.firstName.prefix(1)))
                        .foregroundColor(.white)
                        .font(.title)
                )
            VStack(alignment: .leading) {
                Text(user.fullName)
                    .font(.headline)
                    .lineLimit(1)
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
