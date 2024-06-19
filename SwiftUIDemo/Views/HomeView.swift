//
//  HomeView.swift
//  SwiftUIDemo
//
//  Created by Arvind Seth on 18/06/24.
//

import SwiftUI

struct HomeView: View {
    let items = Item.sampleData()

    var body: some View {
        List(items) { item in
            NavigationLink(destination: DetailView(item: item)) {
                HStack {
                    Circle()
                        .fill(Color.random)
                        .frame(width: 50, height: 50)
                        .overlay(
                            Text(String(item.name.prefix(1)))
                                .foregroundColor(.white)
                                .font(.title)
                        )

                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                            .lineLimit(1)
                        Text(item.description)
                            .font(.subheadline)
                            .lineLimit(2)
                    }
                }
            }
        }
        .navigationTitle("Home")
    }
}

