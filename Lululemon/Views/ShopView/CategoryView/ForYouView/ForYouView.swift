//
//  ForYouView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//

import SwiftUI

struct ForYouView: View {
    var body: some View {
        VStack(spacing:50) {
            ForYouListView()
            
            ForYouBottomView()
        }
    }
}

#Preview {
    ForYouView()
}
