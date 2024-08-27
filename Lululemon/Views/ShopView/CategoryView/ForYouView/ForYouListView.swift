//
//  ForYouListView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct ForYouListView: View {
    
    var body: some View {
        #if DEBUG
        ScrollView {
            content
        }
        #else
        content
        #endif
    }
    
    var content: some View {
        VStack(spacing: 50){
            ForYouListItemView(img: "Bag", title: "", content: "Must-have accessories, reimagined in new Cactus Material. Only members can shop first.", bottomText: "Join Membership Now")
            
            ForYouListItemView(
                img: "BackToSchool",
                title: "",
                content: "Don't procrastinate on finding head-to-toe comfort for school.",
                bottomText: "Shop Back to School"
            )
            
            ForYouListItemView(
                img: "MixAndMatch",
                title: "Mix and Match Outfits",
                content: "Back to school means new outfits. Create yours easily with our interactive experience.",
                bottomText: "Try It Out"
            )
            
            ForYouListItemView(
                img: "MadeTooMuch",
                title: "",
                content: "Shop We Made Too Much",
                bottomText: "Shop WE Made Too Much"
            )
        }
    }
}

//#Preview(traits: .sizeThatFitsLayout) {
#Preview() {
    ForYouListView()
}
