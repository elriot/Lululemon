//
//  ShopView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            HelloView()

            QRButton()

            CategoryCarouselRowListView()
            Spacer()
        })
        .padding()
        
    }
}

#Preview {
    ShopView()
}
