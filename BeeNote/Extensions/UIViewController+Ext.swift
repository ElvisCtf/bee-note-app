//
//  UIViewController+Ext.swift
//  BeeNote
//
//  Created by Elvis Cheng on 13/8/2024.
//

import UIKit

extension UINavigationController {
    func setNavBarTranslucent() {
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithDefaultBackground()
        self.navigationBar.standardAppearance = navigationBarAppearance
        self.navigationBar.scrollEdgeAppearance = navigationBarAppearance
    }
}

