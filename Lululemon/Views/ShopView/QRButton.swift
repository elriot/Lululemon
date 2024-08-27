//
//  QRButton.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

struct QRButton: View {
    @StateObject var vm: ShopVM = ShopVM()
    var body: some View {
        Button {
            vm.showSearchView()
        } label: {
            ZStack {
                Rectangle()
                    .frame(maxHeight: 50)
                    .foregroundColor(.gray.opacity(0.1))
                    .cornerRadius(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray.opacity(0.5), lineWidth: 1)
                    }
//                    .border(.gray)
                    
                HStack(){
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxHeight: 20)
                        .padding(10)
                        
                    Text("Search / Scan QR Code")
                        .font((SystemFont.BasicFont))
                    
                    Spacer()
                    
                    Button {
                        vm.showQRScanView()
                    } label: {
                        Image(systemName: "qrcode.viewfinder")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxHeight: 30)
                            .padding(10)
                    }
                }
                .foregroundColor(.gray)
                
            }
        }
    }
}

#Preview {
    QRButton()
}
