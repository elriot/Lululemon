//
//  SearchTextField.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//

import SwiftUI

struct SearchTextField: View {
    let placeholder: String
    @Binding var text: String
    @FocusState private var isFocused: Bool
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 15)
                
                TextField(placeholder, text: $text)
                    .submitLabel(.done)
                    .textInputAutocapitalization(.never)
                    .keyboardType(.emailAddress)
                    .background(.clear)
                    .focused($isFocused)
            }
            
            if isFocused {
                Button {
                    text = ""
                    isFocused = false
                } label: {
                    Text("Cancel")
                }
                .buttonStyle(DefaultButtonStyle())
                .foregroundColor(.black)
            }
                
        }
//        HStack {
//
//        }
        .padding(8)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.gray.opacity(0.1), lineWidth: 0.3)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.gray.opacity(0.1))
                )
        )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SearchTextField(placeholder: "Fine your nearest store", text: .constant(""))
}
