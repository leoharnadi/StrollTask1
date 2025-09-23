//
//  ChatModel.swift
//  Stroll Task 1
//
//  Created by Leo Harnadi on 23/09/25.
//

import Foundation

struct Chat {
    let name: String
    let avatar: String
    let message: Message
    let time: String
    let status: ChatStatus
}

struct Audio: Equatable {
    let image: String
    let duration: String
}

enum Message: Equatable {
    case text(String)
    case audio(Audio)
}

enum ChatStatus: Equatable {
    case newChat, yourMove, unread(count: Int), none
}

let Chats: [Chat] = [
    Chat(name: "Jessica", avatar: "jessicaChat", message: .audio(Audio(image:"", duration:"00:58")), time: "6:21 pm", status: .newChat),
    Chat(name: "Amanda", avatar: "amandaChat", message: .text("Lol I love house music too"), time: "6:21 pm", status: .yourMove),
    Chat(name: "Sila", avatar: "silaChat", message: .text("You: I love the people there tbh, have you been?"), time: "Wed", status: .none),
    Chat(name: "Marie", avatar: "marieChat", message: .text("Hahaha that's interesting, it does seem like people here are startin..."), time: "6:21 pm", status: .unread(count: 4)),
    Chat(name: "Jessabeth", avatar: "jessicaChat", message: .text("Lol i love house music too"), time: "6:21 pm", status: .unread(count: 9)),
    Chat(name: "Mary", avatar: "marieChat", message: .text("Lol i love country music too"), time: "6:31 pm", status: .unread(count: 2)),
]
