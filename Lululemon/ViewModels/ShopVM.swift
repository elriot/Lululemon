//
//  ShopVM.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import Foundation

final class ShopVM: ObservableObject {
    
    init(){}
    
    func showSearchView(){
        print("show search")
    }
    func showQRScanView() {
        print("showQR")
    }
    
    func getShopCategory() -> [ShopCategory] {
        return [.forYou, .teamCanada, .women, .men, .accessories, .shoes]
    }
}
