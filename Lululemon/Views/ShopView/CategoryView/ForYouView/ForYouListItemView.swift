//
//  ForYouListItemView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct ForYouListItemView: View {
    let img: String
    let title: String
    let content: String
    let bottomText: String
    
    var body: some View {
        Button{
            
        } label: {
            VStack {
                Image(img)
                    .resizable()
                    .scaledToFit()
                    .imageScale(.medium)
                
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text(title)
                            .font(SystemFont.MiniTitle)
                            .fontWeight(.semibold)
                        
                        Text(content)
                            .font(SystemFont.captionFont)
                            .foregroundColor(.darkGray)
                        
                        HStack {
                            Text(bottomText)
                                .font(SystemFont.captionFont)
                                .fontWeight(.semibold)
                                
                                
                            Spacer()
                            Image(systemName: "arrow.right")
                                .foregroundColor(.black)
                        }
                    }
                }
                .padding()
            }
            .cornerRadius(10)
        }
        .buttonStyle(PlainButtonStyle())
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.3), lineWidth: 2)
//                .shadow(color: .gray.opacity(0.7), radius: 10, x: 0, y: 2)
        )
    }
}

#Preview {
    ForYouListItemView(img: "bag01", title: "Mix and Match Outfits", content: "Must-have accessories, reimagined in new Cactus Material. Only members can shop first.", bottomText: "Join Membership Now")
}
