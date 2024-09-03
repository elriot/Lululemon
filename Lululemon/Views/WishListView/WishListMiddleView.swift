//
//  WishListMiddleView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-09-03.
//

import SwiftUI

struct WishListMiddleView: View {
    var body: some View {
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
    }
}

#Preview {
    WishListMiddleView()
}
