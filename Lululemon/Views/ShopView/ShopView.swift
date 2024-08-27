//
//  ShopView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct ShopView: View {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {

                VStack(alignment: .center, spacing: 50, content: {
                    
                    HelloView()
                    
                    QRButton()
                    
                    CategoryCarouselRowListView()
//                    Spacer()
                })
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 30, maxHeight: 30)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("qrcode.viewfinder")
                    }) {
                        Image(systemName: "qrcode.viewfinder")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("magnifyingglass")
                    }) {
                        Image(systemName: "magnifyingglass")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("bag")
                    }) {
                        Image(systemName: "bag")
                    }
                }
            }
            .foregroundColor(.black)
        }
    }
}

#Preview {
    ShopView()
}
