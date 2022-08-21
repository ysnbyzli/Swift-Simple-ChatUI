//
//  CallsView.swift
//  SimpleChatUi
//
//  Created by Yasin Beyazlı on 21.08.2022.
//

import SwiftUI

struct CallsView: View {
    @State var searchText: String = ""
    
    let messages = [
        ["user":"Shezad", "message": "Outgoing", "time": "1:30 PM"],
        ["user":"Catherine", "message":"Incoming", "time": "4:25 PM"],
        ["user":"Shezad", "message":"Incoming", "time": "5:00 PM"],
        ["user":"Afna", "message": "Outgoing", "time": "8:45 PM"],
        ["user":"Mathew", "message": "Outgoing", "time": "9:00 PM"],
        ["user":"Afna", "message": "Incoming", "time": "Yesterday"],
        ["user":"Jerin", "message": "Outgoing", "time": "Yesterday"],
        ["user":"Shezad", "message":"Outgoing", "time": "Tuesday"],
        ["user":"Afna", "message": "Incoming", "time": "Tuesday"],
        ["user":"Mathew", "message": "Outgoing", "time": "Tuesday"],]
    
    var body: some View {
        ZStack{
            Color("color_bg").edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Text("Calls")
                        .fontWeight(.semibold)
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "phone.badge.plus")
                        .foregroundColor(Color("color_primary"))
                        .font(.title2)
                }
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading, spacing: 5) {
                        SearchView(searchText: $searchText)
                        VStack(spacing: 25){
                            ForEach(messages, id: \.self){message in
                                HStack{
                                    Image(message["user"]!)
                                        .resizable()
                                        .background(Color("color_bg_inverted").opacity(0.05))
                                        .frame(width: 60, height: 60, alignment: .center)
                                        .clipShape(Circle())
                                    VStack(alignment: .leading, spacing: 6){
                                        HStack{
                                            Text(message["user"]!)
                                            Spacer()
                                            Text(message["time"]!)
                                        }
                                        HStack{
                                            Image(systemName: message["message"] == "Outgoing" ? "arrow.up.right" : "arrow.down.left")
                                                .foregroundColor(message["message"] == "Outgoing" ? Color("color_primary") : .red)
                                            
                                            Text(message["message"]!).foregroundColor(Color("color_bg_inverted").opacity(0.5))
                                                .lineLimit(2)
                                        }
                                    }
                                    .padding(.horizontal, 10)
                                }
                            }
                        }.padding(.top)
                    }
                }
            }
            .padding(.top)
            .padding(.horizontal)
        }
    }
}

struct CallsView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CallsView().preferredColorScheme(.dark)
            CallsView()
        }
    }
}
