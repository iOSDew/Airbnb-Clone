//
//  MainTabView.swift
//  Airbnb
//
//  Created by Khojimurod Sultonov on 13/03/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem{Label("Explore", systemImage: "magnifyingglass")}
            
            WishlistsView()
                .tabItem{Label("Explore", systemImage: "heart")}

            ProfileView()
                .tabItem{Label("Explore", systemImage: "person")}
        }
    }
}

#Preview {
    MainTabView()
}
