//
//  ClassesButtomView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-30.
//

import SwiftUI

struct ClassesButtomView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            VStack {
                HStack {
                    Text("New classes drop on:")
                    Spacer()
                }
                .fontWeight(.bold)
                
                HStack {
                    Text("Thurday, September 19th")
                    Spacer()
                }
            }
            .padding()
        }
        .font(SystemFont.BasicFont)
        .background(.skyBlue)
        .foregroundColor(.skyDarkBlue)
        
    }
}

#Preview {
    ClassesButtomView()
}
