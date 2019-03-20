//
//  UIColor+CustomColors.swift
//  RxProjectBMSTUHack
//
//  Created by Кирилл Володин on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import UIKit

extension UIColor {
    static let openMessGreen = UIColor(r: 28, g: 126, b: 33)
    static let closeMessRed = UIColor(r: 126, g: 33, b: 25)
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
    }
}
