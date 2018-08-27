//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Samantha Gatt on 8/27/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    
    static var mainColor = UIColor(red: 232.0/255.0, green: 232.0/255.0, blue: 232.0/255.0, alpha: 1.0)
    static var accentColor = UIColor(red: 128.0/255.0, green: 160.0/255.0, blue: 133.0/255.0, alpha: 1.0)
    static var textColor = UIColor(red: 89.0/255.0, green: 89.0/255.0, blue: 89.0/255.0, alpha: 1.0)
    
    static func setUpColoredTheme() {
        
        // MARK: - NavigationBar
        
        UINavigationBar.appearance().barTintColor = mainColor
        
        let navBarTitleFont = UIFont(name: "Minya Nouvelle", size: 50)!
        let navBarTitleFontMetrics = UIFontMetrics(forTextStyle: .title1).scaledFont(for: navBarTitleFont)
        let navBarTitleTextColor = [NSAttributedStringKey.foregroundColor : textColor, NSAttributedStringKey.font: navBarTitleFontMetrics]
        UINavigationBar.appearance().titleTextAttributes = navBarTitleTextColor
        UINavigationBar.appearance().largeTitleTextAttributes = navBarTitleTextColor
        
        UIBarButtonItem.appearance().tintColor = accentColor
        
    }
}
