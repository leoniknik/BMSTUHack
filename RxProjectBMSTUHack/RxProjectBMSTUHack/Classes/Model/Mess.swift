//
//  Mess.swift
//  RxProjectBMSTUHack
//
//  Created by Кирилл Володин on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import UIKit

final class Mess {
    let title: String
    let isOpen: Bool
    let image: UIImage
    let meals: [Meal]
    
    init(title: String, isOpen: Bool, image: UIImage, meals: [Meal] = []) {
        self.title = title
        self.isOpen = isOpen
        self.image = image
        self.meals = meals
    }
}
