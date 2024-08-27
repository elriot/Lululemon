//
//  CategoryCarouselRowListView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct CategoryCarouselRowListView: View {
    @State var clickedIndex = 0
    
    var list = ["For You", "Team Canada", "Women", "Men", "Accessories", "Shoes"]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 20) {
                ForEach(0..<list.count, id: \.self) { index in
                    CategoryCarouselRowItemView(
                        title: list[index], 
                        index: index,
                        isActive: index==clickedIndex,
                        clickedIndex: $clickedIndex
                    )
                }
            }
        }
    }
}

#Preview {
    CategoryCarouselRowListView()
}
