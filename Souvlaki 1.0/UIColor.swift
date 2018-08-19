//
//  UIColor.swift
//  Souvlaki 1.0
//
//  Created by DJL on 01/08/2018.
//  Copyright © 2018 apptouch. All rights reserved.
//

import UIKit
extension UIColor{
    
   //this class is used to define personal colours that can be used throught the project
    
    //create colours from HEX code
    static let souvlakiLightBlue = UIColor(hex: 0x009EF6)
    static let transparentBlack = UIColor(hex: 0x000000, a: 0.5)
    
    //create colours from RGB vues
    static let costumRed = UIColor(red: 255, green: 0, blue: 0)
    static let souvlakiBlue = UIColor(red: 0, green: 158, blue: 246)
    
    convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0){
        self.init(
            red:CGFloat(red) / 255.0,
            green:CGFloat(green) / 255.0,
            blue:CGFloat(blue) / 255.0,
            alpha: a
        )
    }
    
    convenience init(hex: Int, a: CGFloat = 1.0) {
        
        self.init(
            red: (hex >> 16) & 0xFF,
            green: (hex >> 8) & 0xFF,
            blue: hex & 0xFF,
            a: a
        )
    }
}

