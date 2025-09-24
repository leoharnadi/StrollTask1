//
//  TurnView.swift
//  Stroll Task 1
//
//  Created by Leo Harnadi on 23/09/25.
//

import SwiftUI

struct TurnView: View {
    let offset: CGFloat = 0.17
    let progress: CGFloat = 0.9
    
    var calculatedProgress: CGFloat {
        return offset + (1 - 2 * offset) * progress
    }
    
    let progressGradient = AngularGradient(
        gradient: Gradient(stops: [
            .init(color: .clear, location: 0.02),
            .init(color:  Color("ProgressGreen1"), location: 0.66),
            .init(color: Color("ProgressGreen2"), location: 0.77)
        ]),
        center: .center
    )
    
    let stopperGradient = LinearGradient(
        gradient: Gradient(stops: [
            .init(color: Color("Purple").opacity(0.0), location: 0.0),
            .init(color: Color("Purple").opacity(1.0), location: 0.2),
            .init(color: Color("Purple").opacity(1.0), location: 0.8),
            .init(color: Color("Purple").opacity(0.0), location: 1.0)
        ]),
        startPoint: .leading,
        endPoint: .trailing
    )
    
    
    var body: some View {
        VStack(spacing:0) {
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    HStack(spacing: 10) {
                        Text("Your Turn")
                            .foregroundColor(.white)
                            .font(MyFont.title)
                        
                        Circle()
                            .fill(Color("Purple"))
                            .frame(width: 16, height: 16)
                            .overlay(
                                Text("7")
                                    .font(MyFont.caption)
                                    .foregroundColor(.black)
                                    .fontWeight(.medium)
                            )
                            .padding(2)
                    }
                    
                    Text("Make your move, they are waiting 🎵")
                        .font(MyFont.italicBody)
                        .italic()
                        .foregroundColor(Color("LightGray"))
                }
                
                Spacer()
                
                ZStack {
                    Circle()
                        .fill(Color("Purple").opacity(0.25))
                        .frame(width: 55, height: 55)
                        .blur(radius: 25)
                        .blendMode(.screen)
                        .rotationEffect(.degrees(22.9))
                    ZStack {
                        
                        ZStack {
                            
                            Circle()
                                .trim(from: offset, to: 1 - offset)
                                .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round))
                                .foregroundColor(Color("BarGray"))
                                .rotationEffect(.degrees(90))
                            
                            Circle()
                                .trim(from: offset, to: calculatedProgress)
                                .stroke(progressGradient,style: StrokeStyle(lineWidth: 4, lineCap: .round))
                                .rotationEffect(.degrees(90))
                            
                            Circle()
                                .trim(from: calculatedProgress - 0.005, to: calculatedProgress + 0.005)
                                .stroke(stopperGradient, style: StrokeStyle(lineWidth: 6))
                                .rotationEffect(.degrees(90))
                            
                        }
                        .frame(width: 45, height: 45)
                        
                        VStack(spacing: -7) {
                            Image("profile2")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .clipShape(Circle())
                            
                            Text(String(format: "%.0f", progress * 100))
                                .font(MyFont.caption)
                                .foregroundColor(.white)
                                .padding(.horizontal, 13.5)
                                .padding(.vertical, 2.7)
                                .background(
                                    Color("DarkNavy")
                                        .cornerRadius(22.5)
                                )
                        }.padding(.top,13)
                    }
                }
            }
            .padding(.trailing, 15)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing:15) {
                    ForEach(Turns, id: \.name) { card in
                        TurnCardView(card: card)
                    }
                    Image("moreTurnCards")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 205)
                        .clipped()
                    
                }
            }.frame(height: 205).padding(.top, 15)
        }
        .padding(.leading,17)
    }
    
}

#Preview {
    TurnView()
}
