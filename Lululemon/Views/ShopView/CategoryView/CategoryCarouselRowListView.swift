//
//  CategoryCarouselRowListView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct CategoryCarouselRowListView: View {
    var list = ["For You", "Team Canada", "Women", "Men", "Accessories", "Shoes"]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 19) {
                ForEach(0..<list.count, id: \.self) { index in
                    Text(list[index])
                }
            }
        }
    }
}

#Preview {
    CategoryCarouselRowListView()
}
