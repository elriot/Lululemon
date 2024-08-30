//
//  ClassesListViewItem.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-29.
//

import SwiftUI

struct ClassesListViewItem: View {
    let level: Level
    let img: String
    let title: String
    let lecturer: String
    let classCategory: String
    
    
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
        VStack {
            Button {
                
            } label: {
                VStack(alignment: .leading) {
                    GeometryReader { geometry in
                        ZStack {
                            Image(img)
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width, height: geometry.size.width * 3 / 4)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            LinearGradient(
                                gradient: Gradient(colors: [.black.opacity(0.9), .clear, .clear, .clear]),
                                startPoint: .bottom,
                                endPoint: .top
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }

                        
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
                    
                    
                    ZStack {
                        VStack(alignment: .leading) {
                            Text(title)
                                .fontWeight(.bold)
                                .font(SystemFont.BasicFont)
                            
                                
                            HStack {
                                Text(lecturer)
                                Text("•")
                                Text(classCategory)
                            }
                            .fontWeight(.semibold)
                            .font(SystemFont.semiBasicFont)
                        }
                        .kerning(-0.5)
                        .lineLimit(1)
                        .multilineTextAlignment(.leading)
                        .padding(.vertical, 50)
                        .padding(.horizontal, 20)
                        .foregroundColor(.white)
                    }
                }
            }
            .frame(height: 300)
            
        }
    }
}

#Preview {
    ClassesListViewItem(level: .advanced, img: "classes00", title: "20 min Yin Yoga", lecturer: "Chealsea Jackson Robers", classCategory: "Meditation")
}
