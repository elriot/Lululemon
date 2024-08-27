//
//  HelloView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct HelloView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 35) {
            Text("Hey there!")
                .font(SystemFont.AppFont)
                .fontWeight(.bold)
            
            Text("We're so glad you're here. This is going to be the start of something great✨")
                .font(SystemFont.BasicFont)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                
            Button {

            } label: {
                ZStack {
                    Rectangle()
                        .frame(maxHeight: 50)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        
                    
                    Text("Create an account or Sign In")
                        .font(SystemFont.BasicFont)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    HelloView()
}
