//
//  WishListSignInView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-09-03.
//

import SwiftUI

struct WishListSignInView: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                HStack {
                    Text("Already have a wishlist?")
                        .fontWeight(.bold)
                    
                    
                    Spacer()
                    
                    Text("Sign In")
                    Image(systemName: "chevron.right")
                        .fontWeight(.semibold)
                }
                
            }
            .font(SystemFont.BasicFont)
            .buttonStyle(DefaultButtonStyle())
        }
        .padding()
        .foregroundColor(.black)
        .overlay(
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.lightGray),
            alignment: .bottom
        )
        

    }
}

#Preview {
    WishListSignInView()
}
