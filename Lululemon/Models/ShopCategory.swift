//
//  ShopCategory.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-26.
//

import SwiftUI

enum ShopCategory: String, CaseIterable {
    case forYou = "For You"
    case teamCanada = "Team Canada"
    case women = "Women"
    case men = "Men"
    case accessories = "Accessories"
    case shoes = "Shoes"
    case unknown = "Unknown"
    
    init(_ str: String) {
        switch str.lowercased() {
        case "for you":
            self = .forYou
        case "team canada":
            self = .teamCanada
        case "women":
            self = .women
        case "men":
            self = .men
        case "accessories":
            self = .accessories
        case "shoes":
            self = .shoes
        default:
            self = .unknown  // 문자열이 일치하지 않을 경우 기본값
        }
    }
}
