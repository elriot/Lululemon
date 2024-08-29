//
//  ClassesListView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-29.
//

import SwiftUI

struct ClassesListView: View {
    var body: some View {
        #if DEBUG
        ScrollView {
            content
        }
        #else
        content
        #endif
    }
    
    var content: some View {
        VStack {
            VStack(spacing: 20) {
                ClassesListViewItem(level: .begginer, img: "classes01", title: "30 min Interval Running", lecturer: "Soopin Kim", classCategory: "Running")
                    .padding(.horizontal)
                
                ClassesListViewItem(level: .intermediate, img: "classes00", title: "20 min Yin Yoga", lecturer: "Chealsea Jackson Robers", classCategory: "Yoga")
                    .padding(.horizontal)
                
                ClassesListViewItem(level: .advanced, img: "classes02", title: "19 min Deep Relaxation Meditation", lecturer: "Denis Morton", classCategory: "Meditation")
                    .padding(.horizontal)
            }
            .padding(EdgeInsets(top: 50, leading: 0, bottom: 10, trailing: 0))
        }
        .background(.lightGray)
        

    }
}

#Preview {
    ClassesListView()
}
