//
//  AccountTopView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-09-03.
//

import SwiftUI

struct AccountTopView: View {
    @State private var showSignIn = false

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            VStack(alignment: .leading) {
                HStack {
                    Text("Discover lululemon")
                    Spacer()
                }
                HStack {
                    Text("Membership")
                    Spacer()
                }
            }
            .font(SystemFont.AppFont)
            .fontWeight(.bold)
            .padding(EdgeInsets(top: 50, leading: 20, bottom: 50, trailing: 20))
            
            
            VStack (spacing: 20){
                HStack {
                    Text("One account. Tons of benefits. Endless possibilites.")
                    Spacer()
                }
                
                HStack {
                    Text("Experience membership - It's free")
                    Image(systemName: "chevron.right")
                    Spacer()
                }
                .fontWeight(.semibold)
                
            }
            .font(SystemFont.BasicFont)
            .foregroundColor(.darkgray)
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 30, trailing: 20))
            
            // Sign In (black background , white text)
            // Not a member yet?
            // Create member account
            Button {
                showSignIn = true
            } label: {
                ZStack {
                    Rectangle()
                        .frame(height: 50)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        
                    Text("Sign In")
                        .font(SystemFont.BasicFont)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
            }
            .padding()
            .fullScreenCover(isPresented: $showSignIn) {
                SignInView(isPresented: $showSignIn)
            }
            
            Text("Not a member yet?")
                .font(SystemFont.BasicFont)
                .foregroundColor(.darkgray)
            
            Button {

            } label: {
                ZStack {
                    Rectangle()
                        .frame(height: 50)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.black, lineWidth: 1.4)
                                .foregroundColor(.clear)
                                
                        }
     
                        
                    Text("Create member account")
                        .font(SystemFont.BasicFont)
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                }
            }
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 30, trailing: 20))
        }
        .background(.lightGray.opacity(0.5))

    }
}

#Preview {
    AccountTopView()
}
