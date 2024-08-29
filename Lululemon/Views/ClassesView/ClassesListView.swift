//
//  ClassesListView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-29.
//

import SwiftUI

struct ClassesListView: View {
    let level: Level
    var imageColor: Color {
        switch level {
        case .begginer:
            return .green
        case .intermediate:
            return .yellow
        case .advanced:
            return .red
        }
    }
    var levelText: String {
        switch level {
        case .begginer:
            return "begginer".uppercased()
        case .intermediate:
            return "intermediate".uppercased()
        case .advanced:
            return "advanced".uppercased()
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Button {
                
            } label: {
                GeometryReader { geometry in
                    Image("classes00")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.width * 3 / 4) // 4:3 비율
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    HStack {
                            Image(systemName: "circle.fill")
                            .foregroundColor(imageColor)
                        
                            Text(levelText)
                            .font(SystemFont.semiBasicFont)
                            .fontWeight(.semibold)
                                .foregroundColor(.white)
                                
                    }
                    .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                    .background(
                        RoundedRectangle(cornerRadius: 50)
                            .foregroundColor(.black.opacity(0.7))
                    )
                    .offset(x:10, y:10)
                }
            }
            .frame(width: .infinity, height: 300)
        }
    }
}

#Preview {
    ClassesListView(level: Level.advanced)
}
