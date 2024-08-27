//
//  ContentView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            HStack {
                ShopView()
            }
        }
        .lineLimit(nil)
    }
}

#Preview {
    ContentView()
}
