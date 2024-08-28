//
//  App.swift
//  Lululemon
//
//  Created by SOOPIN KIM on 2024-08-27.
//

import Foundation
import SwiftUI

func configureTabBarAppearance() {
    let appearance = UITabBarAppearance()
    appearance.configureWithOpaqueBackground()
    UITabBar.appearance().standardAppearance = appearance
    UITabBar.appearance().scrollEdgeAppearance = appearance
}

func configureNavigationBarAppearance() {
    let appearance = UINavigationBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.titleTextAttributes = [
                .font: UIFont(name: "Avenir-Heavy", size: 20)!,
                .foregroundColor: UIColor.black
            ]
    UINavigationBar.appearance().standardAppearance = appearance
    UINavigationBar.appearance().scrollEdgeAppearance = appearance
}
