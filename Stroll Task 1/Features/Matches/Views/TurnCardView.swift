//
//  TurnCardView.swift
//  Stroll Task 1
//
//  Created by Leo Harnadi on 23/09/25.
//

import SwiftUI

struct TurnCardView: View {
    let card: Turn
    
    var body: some View {
        ZStack {
            Image(card.background)
                .resizable()
                .scaledToFill()
                .frame(width: 145, height: 205)
                .clipped()
                .blur(radius: card.isHidden ? 25 : 0)
            
            
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(
                    gradient: Gradient(colors: [
                        .white.opacity(0),
                        .black.opacity(0.9)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                ))
                .overlay(
                    VStack(spacing: 5) {
                        if card.hasMoved {
                            if card.deadline > 0 {
                                HStack {
                                    HStack {
                                        Text("📣")
                                            .foregroundColor(.white)
                                            .font(MyFont.subtitle)
                                    }
                                    .padding(.horizontal, 6)
                                    .padding(.vertical, 6)
                                    .background(Color.black)
                                    .cornerRadius(10)
                                    
                                    Spacer()
                                    
                                    ZStack {
                                        Circle()
                                            .fill(.black)
                                            .shadow(
                                                color: .black,
                                                radius: 8,
                                                x: 0,
                                                y: 0
                                            )
                                            .frame(width: 23, height: 23)
                                        Circle()
                                            .fill(Color("TimerGray"))
                                            .frame(width: 23, height: 23)
                                        Image("timer")
                                            .cornerRadius(10)
                                    }
                                    
                                }
                            } else {
                                HStack {
                                    Text("📣 They made a move!")
                                        .foregroundColor(.white)
                                        .font(MyFont.subtitle)
                                }
                                .padding(.horizontal, 10)
                                .padding(.vertical, 4)
                                .background(Color.black)
                                .cornerRadius(10)
                            }
                            
                        }
                        
                        
                        Spacer()
                        
                        Text("\(card.name), \(card.age)")
                            .font(MyFont.captionTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text(card.question)
                            .font(MyFont.captionSubtitle)
                            .foregroundColor(.white.opacity(0.9))
                            .lineLimit(3)
                            .multilineTextAlignment(.center)
                        
                        
                    }
                        .padding(.horizontal, 15)
                        .padding(.vertical, 11)
                )
        }
        .frame(width: 145, height: 205)
        .cornerRadius(20)
        .clipped()
        .overlay(
            Group {
                if card.isHidden {
                    VStack {
                        Spacer()
                        Text("Tap to answer")
                            .font(MyFont.captionSubtitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.bottom, 20)
                            .opacity(0.5)
                        Spacer()
                    }
                }
            }
        )
    }
}
