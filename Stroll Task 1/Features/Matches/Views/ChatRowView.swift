//
//  ChatRowView.swift
//  Stroll Task 1
//
//  Created by Leo Harnadi on 23/09/25.
//

import SwiftUI

struct ChatRowView: View {
    let chat: Chat
    
    var body: some View {
        HStack(alignment:.top,spacing: 16) {
            Image(chat.avatar)
                .resizable()
                .frame(width: 52, height: 52)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 8) {
                    Text(chat.name)
                        .font(MyFont.chatName)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    switch chat.status {
                    case .newChat:
                        Text("New chat")
                            .font(MyFont.chatStatus)
                            .foregroundColor(.white)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Color("DarkPurple"))
                            .cornerRadius(12)

                    case .yourMove, .unread:
                        Text("Your move")
                            .font(MyFont.chatStatus)
                            .foregroundColor(.white)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Color("ChatStatusGray"))
                            .cornerRadius(12)

                    case .none:
                        EmptyView()
                    }
                }
                
                switch chat.message {
                case .text(let text):
                    Text(text)
                        .font(chat.status == .none ? MyFont.chatRead : MyFont.chatUnread)
                        .foregroundColor(.white)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                    
                case .audio(let audio):
                    HStack(spacing: 8) {
                        Image("audio")
                        Text(audio.duration)
                            .font(MyFont.chatAudio)
                            .foregroundColor(Color("ChatAudioPurple"))
                    }
                }
                
            }
            Spacer()
            
            VStack(alignment:.trailing, spacing:5) {
                Text(chat.time)
                    .font(MyFont.chatDate)
                    .foregroundColor(chat.status == .none ? Color("LightGray") : Color("DatePurple"))
                switch chat.status {
                case .newChat:
                    Text("★")
                        .font(MyFont.chatStatus)
                        .foregroundColor(.black)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color("BlurBlue"))
                        .cornerRadius(12)

                case  .unread(let count):
                    Text(String(count))
                        .font(MyFont.chatStatus)
                        .foregroundColor(.black)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color("BlurBlue"))
                        .cornerRadius(12)

                case .none, .yourMove:
                    EmptyView()
                }
                Spacer()
            }
            
        }
        .padding(.vertical, 8.5)
        .padding(.horizontal, 15)
        Divider()
            .frame(height: 0.5)
            .background(Color("DividerGray"))
            .padding(.horizontal, 16)
    }
}
