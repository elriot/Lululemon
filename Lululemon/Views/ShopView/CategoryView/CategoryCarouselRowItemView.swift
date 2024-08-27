//
//  CategoryCarouselRowItemView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct CategoryCarouselRowItemView: View {
    let title: String
    let index: Int
    let isActive: Bool
    @Binding var clickedIndex: Int
    @Binding var selectedCategory: ShopCategory
    
    var body: some View {
        Button {
            clickedIndex = self.index
            selectedCategory = ShopCategory(rawValue: title) ?? .unknown
        } label: {
            Text(title)
                .font(SystemFont.BasicFont)
                .foregroundColor(isActive ? .black : .gray)
                .fontWeight(.semibold)
                .padding(.bottom, 4)
                .overlay(
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(isActive ? .darkRed : .clear),
                    alignment: .bottom
                )
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CategoryCarouselRowItemView(title: "For you", index: 0, isActive: true, clickedIndex: .constant(0), selectedCategory: .constant(ShopCategory.forYou))
}
