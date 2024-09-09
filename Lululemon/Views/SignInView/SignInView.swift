//
//  SignInView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-09-09.
//

import SwiftUI

struct SignInView: View {
    init() {
        configureNavigationBarAppearance()
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("This is SignIn View")
            }
            .navigationTitle("Account")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        print("qrcode.viewfinder")
                    }) {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                    }
                }
            }
        }

    }}

#Preview {
    SignInView()
}
