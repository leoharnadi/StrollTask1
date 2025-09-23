//
//  ProfileView.swift
//  Stroll Task 1
//
//  Created by Leo Harnadi on 23/09/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image("profile")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Profile Page")
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
