//
//  AppStyle.swift
//  Template
//
//  Created by Erik Junghahn on 2024-01-11.
//

import Foundation
import SwiftUI

class AppStyle {
    
    //Colors
    static func primaryColor() -> Color {
        return Color(UIColor(hex: PropertiesController.sharedInstance.primaryColor ?? "") ?? .red)
    }
    static func secondaryColor() -> Color {
        return Color(UIColor(hex: PropertiesController.sharedInstance.secondaryColor ?? "") ?? .red)
    }
    
    //Font weights
    static func primaryFontWeight(){}
    static func secondaryFontWeight(){}
    
    //Font Styles
    static func primaryFontStyle(){}
    static func secondaryFontStyle(){}
    
    //Font sized?
    static func primaryFontSize(){}
    static func secondaryFontSize(){}
    
    //Typography
    static func primaryLineHeight(){}
    static func secondaryLineHeight(){}
    
    //Alignment style?
    static func primaryAlignment(){}
    static func secondaryAlignment(){}
    
}


extension UIColor {
    convenience init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
}


