//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Samantha Gatt on 8/27/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    
    static var navColor = UIColor(red: 232.0/255.0, green: 232.0/255.0, blue: 232.0/255.0, alpha: 1.0)
    static var mainColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 1.0)
    static var sectionHeaderColor = UIColor(red: 225.0/255.0, green: 225.0/255.0, blue: 225.0/255.0, alpha: 1.0)
    static var accentColor = UIColor(red: 128.0/255.0, green: 160.0/255.0, blue: 133.0/255.0, alpha: 1.0)
    static var mainTextColor = UIColor(red: 89.0/255.0, green: 89.0/255.0, blue: 89.0/255.0, alpha: 1.0)
    
    static var navBarTitleFont = UIFont(name: "Minya Nouvelle", size: 40)!
    
    static func setUpColoredTheme() {
        
        UILabel.appearance().textColor = mainTextColor
        
        // MARK: - NavigationBar
        
        UINavigationBar.appearance().barTintColor = navColor
        
        
        let navBarTitleFontMetrics = UIFontMetrics(forTextStyle: .title1).scaledFont(for: navBarTitleFont)
        let navBarTitleTextColor = [NSAttributedStringKey.foregroundColor : mainTextColor, NSAttributedStringKey.font: navBarTitleFontMetrics]
        UINavigationBar.appearance().titleTextAttributes = navBarTitleTextColor
        UINavigationBar.appearance().largeTitleTextAttributes = navBarTitleTextColor
        
        UIBarButtonItem.appearance().tintColor = accentColor
        
        
        // MARK: - TableView
        
        UITableView.appearance().separatorColor = accentColor
        UITableViewCell.appearance().backgroundColor = mainColor
    }
    
    static func textFont(fontName: String, textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: fontName, size: pointSize)!
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
}
