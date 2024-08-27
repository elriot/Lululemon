//
//  StoresView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//

import SwiftUI

struct StoresView: View {
    @State var text: String = ""
    
    init() {
        configureNavigationBarAppearance()
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Divider()
                SearchTextField(placeholder: "Find your nearest store", text: $text)
                
                Divider()
                
                MapView()
            }
            .navigationTitle("Find a Store")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    StoresView()
}
