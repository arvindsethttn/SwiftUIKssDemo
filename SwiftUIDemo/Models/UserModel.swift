//
//  UserModel.swift
//  SwiftUIDemo
//
//  Created by Arvind Seth on 26/06/24.
//

import SwiftUI

struct UserModel: Identifiable, Codable {
    var id = UUID()
    var firstName: String
    var lastName: String

    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
