//
//  ContentView.swift
//  Stroll Task 1
//
//  Created by Leo Harnadi on 23/09/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 2
    
    var body: some View {
        TabView(selection:$selection) {
            CardsView().tabItem { Image("cards")
                Text("Cards") }
            .toolbarBackground(Color("DarkGray"), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .tag(0)
            BonfireView().tabItem { Image("bonfire")
                Text("Bonfire") }
            .toolbarBackground(Color("DarkGray"), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .tag(1)
            MatchesView().tabItem { Image("matches")
                Text("Matches") }
            .toolbarBackground(Color("DarkGray"), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .tag(2)
            ProfileView().tabItem { Image("profile")
                Text("Profile") }
            .toolbarBackground(Color("DarkGray"), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .tag(3)
        }.accentColor(Color("Purple"))
    }
}

#Preview {
    ContentView()
}
