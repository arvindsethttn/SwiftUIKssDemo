//
//  DetailView.swift
//  SwiftUIDemo
//
//  Created by Arvind Seth on 18/06/24.
//

import SwiftUI

struct DetailView: View {
    let item: Item

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(item.name)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.blue)
                .padding(.bottom, 10)

            Text(item.description)
                .font(.body)
                .lineLimit(nil)

            Spacer()
        }
        .padding()
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
