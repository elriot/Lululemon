//
//  StoresView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//

import SwiftUI

struct StoresView: View {
    init() {
        configureNavigationBarAppearance()
    }
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Store")
                Text("Sdfs")
                Spacer()
            }
            .navigationTitle("Find a Store")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    StoresView()
}
