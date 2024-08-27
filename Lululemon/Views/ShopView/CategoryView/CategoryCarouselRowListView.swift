//
//  CategoryCarouselRowListView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct CategoryCarouselRowListView: View {
    @State private var clickedIndex = 0
    @State private var selectedCategory: ShopCategory = .forYou
    @StateObject var vm: ShopVM = ShopVM()
     
    var list: [ShopCategory] {
        vm.getShopCategory()
    }
    var body: some View {
        VStack(spacing: 20) {
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20) {
                    ForEach(0..<list.count, id: \.self) { index in
                        CategoryCarouselRowItemView(
                            title: list[index].rawValue,
                            index: index,
                            isActive: index == clickedIndex,
                            clickedIndex: $clickedIndex,
                            selectedCategory: $selectedCategory
                        )
                    }
                }
            }
            
            Group {
                switch selectedCategory {
                case .forYou:
                    ForYouView()
                case .teamCanada:
                    Text("Team")
                case .women:
                    Text("women")
                case .men:
                    Text("women")
                case .accessories:
                    Text("accessories")
                case .shoes:
                    Text("shoes")
                case .unknown:
                    Text("unknown")
                }
            }
        }
    }
}

#Preview {
    CategoryCarouselRowListView()
}
