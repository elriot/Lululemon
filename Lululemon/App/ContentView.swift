//
//  ContentView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ScrollView(.vertical) {
                HStack {
                    ShopView()
                }
            }
            .tabItem {
                Image(systemName: "hanger")
                Text("Shop")
            }
            
            
        }
        
//        .lineLimit(nil)
    }
}

#Preview {
    ContentView()
}
