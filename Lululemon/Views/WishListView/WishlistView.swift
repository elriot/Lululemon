//
//  WishlistView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//

import SwiftUI

struct WishlistView: View {
    @State private var cartCount = 0
    init() {
        configureNavigationBarAppearance()
    }
    
    var body: some View {
        NavigationView {
            VStack {
                WishListSignInView()
                
                WishListMiddleView()
                
                WishListCountView(cartCount: cartCount)
                
                CreateNewWishListButton()
                Spacer()
            }
            
            .foregroundColor(.black)
            .navigationTitle("Wish List")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("bag")
                    }) {
                        Image(systemName: "bag")
                            .foregroundColor(.black)
                    }
                }
            }
        }
        
    }
}
#Preview {
    WishlistView()
}
