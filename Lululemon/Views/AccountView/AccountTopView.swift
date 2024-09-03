//
//  AccountTopView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-09-03.
//

import SwiftUI

struct AccountTopView: View {

    var body: some View {
        VStack(alignment: .center) {
            VStack(alignment: .leading) {
                HStack {
                    Text("Discover lululemon")
                    Spacer()
                }
                HStack {
                    Text("Membership")
                    Spacer()
                }
            }
            .font(SystemFont.AppFont)
            .fontWeight(.bold)
            .padding(EdgeInsets(top: 50, leading: 20, bottom: 50, trailing: 20))
            
            
            VStack (spacing: 20){
                HStack {
                    Text("One account. Tons of benefits. Endless possibilites.")
                    Spacer()
                }
                
                HStack {
                    Text("Experience membership - It's free")
                    Image(systemName: "chevron.right")
                    Spacer()
                }
                .fontWeight(.semibold)
                
            }
            .font(SystemFont.BasicFont)
            .foregroundColor(.darkgray)
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 30, trailing: 20))
            

        }
        .background(.lightGray.opacity(0.5))
    }
}

#Preview {
    AccountTopView()
}
