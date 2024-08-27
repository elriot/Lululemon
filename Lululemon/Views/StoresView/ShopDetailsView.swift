//
//  ShopDetailsView.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//

import SwiftUI
import MapKit

struct ShopDetailsView: View {
    @Binding var mapSelection: MKMapItem?
    @Binding var show: Bool
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(mapSelection?.placemark.name ?? "lululemon")
                        .font(SystemFont.AppFont)
                        .fontWeight(.semibold)
                    
                    Text(mapSelection?.placemark.title ?? "")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                        .lineLimit(2)
                        .padding(.trailing)
                }
                Spacer()
                
                Button {
                    show.toggle()
                    mapSelection = nil
                }  label: {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.gray)
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ShopDetailsView(mapSelection: .constant(nil), show: .constant(false))
}
