//
//  UIView+RoundCorner.swift
//  ProductScreen
//
//  Created by Aleksander Evtuhov on 20/03/2019.
//  Copyright © 2019 Aleksander Evtuhov. All rights reserved.
//

import UIKit

extension UIView {
    func setupCornerRadius(radius: CGFloat? = nil) {
        if let radius = radius {
            layer.cornerRadius = radius
        } else {
            layer.cornerRadius = self.frame.height / 2
        }
        clipsToBounds = true
    }
}
