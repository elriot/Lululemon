//
//  ClassesView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//

import SwiftUI

struct ClassesView: View {
    
    init() {
        configureNavigationBarAppearance()
    }
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Image("peleton")
                        .resizable()
                        .scaledToFit()
    //                    .frame(width: .infinity)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Make your workouts world-class.")
                            .font(SystemFont.AppFont)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                        Text("With lululemon Membership, you get access to free Peleton classes-no trial necessary. This month's theme is sleep health. Incorportate te following classes into your routine to calm the min and relax the body.")
                            .font(SystemFont.semiBasicFont)
                            .padding()
                            .lineLimit(nil)
                    }
                    

                    ClassesListView(level: Level.begginer)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Looking for more?")
                            .font(SystemFont.AppFont)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                        Text("Try the Peleton App for free and unlock thousnads of classes with lululemon Membership's newest benefit: Parter perks.")
                            .font(SystemFont.semiBasicFont)
                            .padding()
                    }

                    VStack(alignment: .leading, spacing: 5) {
                        Text("Looking for more?")
                            .font(SystemFont.AppFont)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                        Text("Try the Peleton App for free and unlock thousnads of classes with lululemon Membership's newest benefit: Parter perks.")
                            .font(SystemFont.semiBasicFont)
                            .padding()
                    }
                
                
                }
            }

            .navigationTitle("Select Peleton Classes")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ClassesView()
}
