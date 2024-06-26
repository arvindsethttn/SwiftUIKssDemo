//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Arvind Seth on 18/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
