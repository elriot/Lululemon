//
//  ForYouBottomView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//

import SwiftUI

struct ForYouBottomView: View {
    var body: some View {
        VStack(spacing:20) {
            Text("ARE YOU ENJOYING OUR APP?")
                .font(SystemFont.BasicFont)
                .foregroundColor(.gray)
                .fontWeight(.semibold)
            
            Button{
                // feedback function
            } label: {
                HStack {
                    Text("Give Us Feedback")
                        .font(SystemFont.BasicFont)
                        .foregroundColor(.black)
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                }
                .padding()
                .frame(height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1.2)
                )
            }
        }
    }
}

#Preview {
    ForYouBottomView()
}
