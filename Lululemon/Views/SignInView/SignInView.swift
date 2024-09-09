//
//  SignInView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-09-09.
//

import SwiftUI

struct SignInView: View {
    @Binding var isPresented: Bool

    init(isPresented: Binding<Bool>) {
        self._isPresented = isPresented
        configureNavigationBarAppearance()
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    isPresented = false 
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                        .padding()
                }
            }

            Spacer()
            Text("Sign In View")
                .font(.largeTitle)
            Spacer()
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)  
    }
//    var body: some View {
//        NavigationView {
//            VStack {
//                Text("This is SignIn View")
//            }
//            .navigationTitle("Account")
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbar {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    Button(action: {
//                        print("qrcode.viewfinder")
//                    }) {
//                        Image(systemName: "xmark")
//                            .foregroundColor(.black)
//                    }
//                }
//            }
//        }
//        
//    }
}

#Preview {
    SignInView(isPresented: .constant(true))
}
