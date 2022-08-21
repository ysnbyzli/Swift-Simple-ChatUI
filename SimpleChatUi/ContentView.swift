//
//  ContentView.swift
//  SimpleChatUi
//
//  Created by Yasin Beyazlı on 21.08.2022.
//

import SwiftUI

struct ContentView: View {
  
    init() {
        UITabBar.appearance().barTintColor = UIColor(named: "color_bg")
        UITabBar.appearance().isTranslucent = false
    }
    
    var body: some View {
        TabView{
            ChatsView()
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right")
                }
            CallsView()
                .tabItem {
                    Image(systemName: "phone")
                }
            ContactsView()
                .tabItem {
                    Image(systemName: "person.2")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                }
        }
        .accentColor(Color("color_primary"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
