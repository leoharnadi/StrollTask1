//
//  CardsView.swift
//  Stroll Task 1
//
//  Created by Leo Harnadi on 23/09/25.
//

import SwiftUI

struct CardsView: View {
    var body: some View {
        VStack {
            Image("cards")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Cards Page")
        }
        .padding()
    }
}

#Preview {
    CardsView()
}
