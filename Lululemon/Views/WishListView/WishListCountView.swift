//
//  WishListCountView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-09-03.
//

import SwiftUI

struct WishListCountView: View {
    let cartCount: Int
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("My Favourites")
                    Text("Private | \(cartCount) items")
                }
                Spacer()
                
                Button {
                    print("tap setting")
                } label: {
                    Text("Settings")
                    Image(systemName: "chevron.right")
                }
            }
            
            Divider()
//            HStack {
                VStack(alignment:.leading) {
                    Text("Your Wish List looks a little lonely. Add a few favourites.")
                }
//            }
        }
        .padding()
//        .overlay(
//            Rectangle()
//                .frame(height: 1)
//                .foregroundColor(.lightGray)
//        )
        .foregroundColor(.black)
        .font(SystemFont.semiBasicFont)
    }
}

#Preview {
    WishListCountView(cartCount: 0)
}
