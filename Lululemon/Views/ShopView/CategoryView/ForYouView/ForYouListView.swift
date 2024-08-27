//
//  ForYouListView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct ForYouListView: View {
    var body: some View {
//        ScrollView(.vertical) {
            VStack(spacing: 60){
                ForYouListItemView(img: "bag01", title: "Mix and Match Outfits", content: "Must-have accessories, reimagined in new Cactus Material. Only members can shop first.", bottomText: "Join Membership Now")
                    
                
                ForYouListItemView(img: "bag01", title: "Mix and Match Outfits", content: "Must-have accessories, reimagined in new Cactus Material. Only members can shop first.", bottomText: "Join Membership Now")
                
                ForYouListItemView(img: "bag01", title: "Mix and Match Outfits", content: "Must-have accessories, reimagined in new Cactus Material. Only members can shop first.", bottomText: "Join Membership Now")
                
                ForYouListItemView(img: "bag01", title: "Mix and Match Outfits", content: "Must-have accessories, reimagined in new Cactus Material. Only members can shop first.", bottomText: "Join Membership Now")
            }
//        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ForYouListView()
}
