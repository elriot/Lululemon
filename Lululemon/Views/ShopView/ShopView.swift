//
//  ShopView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .center, spacing: 50, content: {
                HelloView()
                
                QRButton()
                
                CategoryCarouselRowListView()
                Spacer()
            })
            .padding()
        }
        
    }
}

#Preview {
    ShopView()
}
