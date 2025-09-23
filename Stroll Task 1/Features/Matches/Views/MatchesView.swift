//
//  MatchesView.swift
//  Stroll Task 1
//
//  Created by Leo Harnadi on 23/09/25.
//

import SwiftUI

struct MatchesView: View {
    var body: some View {
        VStack {
            TurnView()
            Spacer()
            ChatView()
        }
        .background(Image("background").resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity))
        .ignoresSafeArea(.container, edges: [.leading,.trailing])
            
    }
}

#Preview {
    MatchesView()
}
