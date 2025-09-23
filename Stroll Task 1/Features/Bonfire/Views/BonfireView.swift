//
//  BonfireView.swift
//  Stroll Task 1
//
//  Created by Leo Harnadi on 23/09/25.
//

import SwiftUI

struct BonfireView: View {
    var body: some View {
        VStack {
            Image("bonfire")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Bonfire Page")
        }
        .padding()
    }
}

#Preview {
    BonfireView()
}
