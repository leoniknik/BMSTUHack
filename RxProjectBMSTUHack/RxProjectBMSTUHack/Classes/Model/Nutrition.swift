//
//  Nutrition.swift
//  RxProjectBMSTUHack
//
//  Created by Кирилл Володин on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import Foundation

enum NutritionType: String {
    case fat = "Жиры"
    case carbohydrates = "Углеводы"
    case protein = "Белки"
}

final class MealNutrition {
    let type: NutritionType
    let value: Double
    
    init(type: NutritionType, value: Double) {
        self.type = type
        self.value = value
    }
}
