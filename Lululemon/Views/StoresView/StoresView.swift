//
//  StoresView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//

import SwiftUI

struct StoresView: View {
    @State var text: String = ""
    @State var searchText: String = ""
    private var lululemon: String = "lululemon"
    
    init() {
        configureNavigationBarAppearance()
    }
    func submit() {
        searchText = lululemon + " " + text
    }
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Divider()
                SearchTextField(placeholder: "Find your nearest store", action: submit, text: $text)
                
                Divider()
                
                MapView(searchText: searchText)
            }
            .navigationTitle("Find a Store")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    StoresView()
}
