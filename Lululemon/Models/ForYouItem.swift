//
//  ForYouItem.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//

import Foundation


struct ForYouItem: Identifiable, Equatable, Hashable {
    let id: String
    var img: String
    var content: String
    var bottomText: String
    var link: String // {page: "shop", category: "shoes"}..
}
