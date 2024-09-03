//
//  CreateNewWishListButton.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-09-03.
//

import SwiftUI

struct CreateNewWishListButton: View {
    var body: some View {
        VStack(alignment: .center) {
            VStack {
                Button {
                    
                } label : {
                    HStack {
                        Text("Create a New Wish List")
                        Spacer()
                        Image(systemName: "plus")
                    }
                    .fontWeight(.bold)
                }

            }
            .padding()
        }
        .font(SystemFont.BasicFont)
        .background(.lightGray.opacity(0.3))
        .foregroundColor(.black)
//        HStack {
//            Spacer()
//            Button {
//                
//            } label: {
//                Text("Create New Wish List")
//            }
//            .overlay {
//                Rectangle()
//                    .frame(width: .infinity, height: 60)
//                    
//    //                .background(.gray.opacity(0.3))
//            }
//            Spacer()
//
//        }
//        .foregroundColor(.gray.opacity(0.3))
//        .buttonStyle(DefaultButtonStyle())
//        .foregroundColor(.black)
    }
}

#Preview {
    CreateNewWishListButton()
}
