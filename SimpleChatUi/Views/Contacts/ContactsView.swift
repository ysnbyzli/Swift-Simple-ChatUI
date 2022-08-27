//
//  ContactsView.swift
//  SimpleChatUi
//
//  Created by Yasin Beyazlı on 21.08.2022.
//

import SwiftUI

struct ContactsView: View {
    @State var searchText: String = ""
    
    let messages = [
        ["user":"Shezad", "message": "shezad@example.com"],
        ["user":"Catherine", "message":"catherine@example.com"],
        ["user":"Afna", "message": "afna@example.com"],
        ["user":"Mathew", "message": "mathew@example.com"],
        ["user":"Jerin", "message": "jerin@example.com"]]
    
    var body: some View {
        ZStack{
            Color("color_bg").edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Text("Contacts")
                        .fontWeight(.semibold)
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.badge.plus")
                        .foregroundColor(Color("color_primary"))
                        .font(.title2)
                }
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading, spacing: 5){
                        
                        SearchView(searchText: $searchText)
                        
                        VStack(spacing: 25){
                        ForEach(messages, id: \.self) { message in
         
                            ContactItem(
                                userImage: String(describing: message["user"]!),
                                userName:  String(describing: message["user"]!),
                                userEmail: String(describing: message["message"]!)
                            )}
                        }
                       
                    }
                }
            }
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContactsView().preferredColorScheme(.dark)
            ContactsView()
        }
    }
}
