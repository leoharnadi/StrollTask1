//
//  ChatView.swift
//  Stroll Task 1
//
//  Created by Leo Harnadi on 23/09/25.
//

import SwiftUI

struct ChatView: View {
    @State private var selectedTab = "Chats"
    
    var body: some View {
        VStack {
            VStack(spacing:10) {
                HStack(spacing:15){
                    Button("Chats") {
                        selectedTab = "Chats"
                    }
                    .font(MyFont.title)
                    .foregroundColor(selectedTab == "Chats" ? .white : Color("LightGray"))
                    .padding(.vertical, 2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .fill(selectedTab == "Chats" ? .white : .clear)
                            .frame(width:53,height: 2)
                            .offset(y: 2)
                            .animation(.easeInOut(duration: 0.2), value: selectedTab)
                        ,
                        alignment: .bottomLeading
                    )
                    Button("Pending") {
                        selectedTab = "Pending"
                    }
                    .font(MyFont.title)
                    .foregroundColor(selectedTab == "Pending" ? .white : Color("LightGray"))
                    .padding(.vertical, 2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .fill(selectedTab == "Pending" ? .white : .clear)
                            .frame(width:53,height: 2)
                            .offset(y: 2)
                            .animation(.easeInOut(duration: 0.2), value: selectedTab)
                        ,
                        alignment: .bottomLeading
                    )
                    Spacer()
                }
                HStack {
                    Text(selectedTab == "Chats" ? "The ice is broken. Time to hit it off" : "The ice is yet to be broken. Time to wait")
                        .font(MyFont.body)
                        .italic()
                        .foregroundColor(Color("LightGray"))
                    Spacer()
                }
            }
            .padding(.leading, 20)
            
            ScrollView {
                LazyVStack(spacing: 1) {
                    ForEach(selectedTab == "Chats" ? Chats : Chats.reversed(), id: \.name) { chat in
                        ChatRowView(chat: chat)
                            .background(Color.black.opacity(0.1))
                    }
                }
            }
            .mask(
                LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: Color.black, location: 0.0),
                        .init(color: Color.black.opacity(0.7), location: 0.0005),
                        .init(color: Color.black, location: 1.0)
                    ]),
                    startPoint: .bottom,
                    endPoint: .top
                )
            )
            
        }
        .padding(.top, 10)
        .background(Color.black)
        .mask(
            LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: Color.black, location: 0.0),
                    .init(color: Color.black.opacity(0.8), location: 0.0005),
                    .init(color: Color.black, location: 1.0)
                ]),
                startPoint: .bottom,
                endPoint: .top
            )
        )
    }
}

#Preview {
    ChatView()
}
