//
//  ContentView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct ContentView: View {
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground() 
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView {
            ShopView()
                .tabItem {
                    Image(systemName: "hanger")
                    Text("Shop")
                }
            
            StoresView()
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Shop")
                }
            
            ClassesView()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Classes")
                }
            
            WishlistView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Wish List")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Acoount")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    ContentView()
}
