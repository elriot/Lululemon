//
//  AccountView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//

import SwiftUI

struct AccountView: View {
    init() {
        configureNavigationBarAppearance()
    }
    
    var body: some View {
        NavigationView {
            VStack {
                AccountTopView()
                
                Spacer()
            }
            .navigationTitle("Account")
            .navigationBarTitleDisplayMode(.inline)
            
        }

    }
}

#Preview {
    AccountView()
}
