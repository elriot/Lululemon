//
//  WishlistView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//

import SwiftUI

struct WishlistView: View {
    
    init() {
        configureNavigationBarAppearance()
    }
    
    var body: some View {
        NavigationView {
            VStack {
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
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.lightGray),
                    alignment: .bottom
                )
                
                VStack {
                    HStack(alignment: .center) {
                        Text("Your wish is")
                        Spacer()
                    }
                    
                    HStack(alignment: .center) {
                        Text("our command.")
                        Spacer()
                    }
                    
                }
                .font(SystemFont.AppFont)
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 50, leading: 20, bottom: 50, trailing: 20))
                
                
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
