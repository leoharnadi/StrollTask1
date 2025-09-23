//
//  TurnModel.swift
//  Stroll Task 1
//
//  Created by Leo Harnadi on 23/09/25.
//

import Foundation

struct Turn {
    let name: String
    let age: Int
    let question: String
    let hasMoved: Bool
    let background: String
    let deadline: Int
    let isHidden: Bool
}

let Turns: [Turn] = [
    Turn(name: "Amanda", age: 22, question: "What is your most favorite childhood memory?", hasMoved: false, background:"amanda", deadline: 0, isHidden: true),
    Turn(name: "Malte", age: 31, question: "What is the most important quality in friendships to you?", hasMoved: true, background:"malte", deadline: 0, isHidden: true),
    Turn(name: "Binghan", age: 28, question: "If you could have any superpower, what would it be?", hasMoved: true, background:"binghan", deadline: 16, isHidden: false)
    ]
