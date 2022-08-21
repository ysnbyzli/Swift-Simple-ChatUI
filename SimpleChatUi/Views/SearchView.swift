//
//  SearchView.swift
//  SimpleChatUi
//
//  Created by Yasin Beyazlı on 21.08.2022.
//

import SwiftUI

struct SearchView: View {
    @Binding var searchText: String

    var body: some View {
        VStack{
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search", text: $searchText)
                Button {
                    searchText = ""
                } label: {
                    Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                }

            }
        }
        .padding(15)
        .foregroundColor(.secondary)
        .background(Color("color_bg_inverted").opacity(0.05))
        .clipShape(Capsule())
    }
}


