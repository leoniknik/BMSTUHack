//
//  Meal.swift
//  RxProjectBMSTUHack
//
//  Created by Кирилл Володин on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import UIKit

final class Meal {
    let name: String
    let image: UIImage?
    let totalCallories: Double
    let price: Double
    let weight: Double
    let nutritions: [MealNutrition]
    let type: Category
    let daysAvailable: [WeekDay]
    
    init(
        name: String,
        image: UIImage?,
        totalCallories: Double,
        price: Double,
        weight: Double,
        nutritions: [MealNutrition],
        type: Category,
        daysAvailable: [WeekDay]
        ) {
        self.name = name
        self.image = image
        self.totalCallories = totalCallories
        self.price = price
        self.weight = weight
        self.nutritions = nutritions
        self.type = type
        self.daysAvailable = daysAvailable
    }
}

enum Category {
    case salad
    case soup
    case hot
    case drink
}

