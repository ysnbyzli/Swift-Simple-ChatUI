//
//  OnlineUsersView.swift
//  SimpleChatUi
//
//  Created by Yasin Beyazlı on 21.08.2022.
//

import SwiftUI

struct OnlineUsersView: View {
    var users = Array<String>()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack{
                HStack(spacing: 25){
                    ForEach(users, id: \.self){user in
                        VStack{
                            Image("\(user)")
                                .resizable()
                                .background(Color("color_bg").opacity(0.1))
                                .frame(width: 80, height: 80, alignment: .center)
                                .overlay(Circle().stroke(Color("color_primary"), lineWidth: 5))
                            Text("\(user)")
                                .fontWeight(.semibold)
                                .padding(.top, 3)
                        }
                        .padding(.leading, 3)
                    }
                }
            }
            .padding(.vertical, 20)
        }
    }
}


