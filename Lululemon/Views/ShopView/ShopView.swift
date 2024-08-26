//
//  ShopView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            Text("Hey there!")
                .font(Font.custom("Avenir", size: 26))
                .fontWeight(.bold)
            
            Text("We're so glad you're here. This is going to be the start of something great✨")
                .font(Font.custom("Avenir", size: 19))
            
            Button {

            } label: {
                ZStack {
                    Rectangle()
                        .frame(maxHeight: 50)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        
                    
                    Text("Create an account or Sign In")
                        .font(Font.custom("Avenir", size: 19))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ShopView()
}
