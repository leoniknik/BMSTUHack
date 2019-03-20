//
//  ServiceLayer.swift
//  RxProjectBMSTUHack
//
//  Created by Aleksander Evtuhov on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import UIKit

final class ServiceLayer {
    static var instance = ServiceLayer()
    
    var messes = [Mess]()
    
    private init() {
        generateData()
    }
    private func generateData() {
        
        let colaNutr = [
            MealNutrition(type: .fat, value: 10.0),
            MealNutrition(type: .protein, value: 10.0),
            MealNutrition(type: .carbohydrates, value: 80.0),
            ]
        let cola = Meal(
            name: "Кока кола",
            image: UIImage(.cola),
            totalCallories: 2000,
            price: 60,
            weight: 500,
            nutritions: colaNutr,
            type: .drink,
            daysAvailable: [.monday, .tuesday, .wednesday, .thirsday, .friday, .saturday, .sunday]
        )
        
        let kotletaNutr = [
            MealNutrition(type: .fat, value: 100.0),
            MealNutrition(type: .protein, value: 100.0),
            MealNutrition(type: .carbohydrates, value: 80.0),
            ]
        let kotleta = Meal(
            name: "Котлета",
            image: UIImage(.kotleta),
            totalCallories: 500,
            price: 100,
            weight: 200,
            nutritions: kotletaNutr,
            type: .hot,
            daysAvailable: [.monday, .tuesday, .wednesday, .thirsday, .friday, .saturday, .sunday]
        )
        let makaroniNutr = [
            MealNutrition(type: .fat, value: 100.0),
            MealNutrition(type: .protein, value: 100.0),
            MealNutrition(type: .carbohydrates, value: 80.0),
            ]
        let makaroni = Meal(
            name: "Макароны",
            image: UIImage(.makaroni),
            totalCallories: 500,
            price: 50,
            weight: 20,
            nutritions: makaroniNutr,
            type: .hot,
            daysAvailable: [.monday, .tuesday, .wednesday, .thirsday, .friday, .saturday, .sunday]
        )
        
        let redSoupNutr = [
            MealNutrition(type: .fat, value: 100.0),
            MealNutrition(type: .protein, value: 100.0),
            MealNutrition(type: .carbohydrates, value: 80.0),
            ]
        let redSoup = Meal(
            name: "Борщ",
            image: UIImage(.redSoup),
            totalCallories: 500,
            price:40,
            weight:70,
            nutritions: redSoupNutr,
            type: .soup,
            daysAvailable: [.monday, .tuesday, .wednesday, .thirsday, .friday, .saturday, .sunday]
        )
        
        let olivNutr = [
            MealNutrition(type: .fat, value: 100.0),
            MealNutrition(type: .protein, value: 100.0),
            MealNutrition(type: .carbohydrates, value: 80.0),
            ]
        let oliv = Meal(
            name: "Ольвье",
            image: UIImage(.oliv),
            totalCallories: 500,
            price:40,
            weight:70,
            nutritions: olivNutr,
            type: .salad,
            daysAvailable: [.monday, .tuesday, .wednesday, .thirsday, .friday, .saturday, .sunday]
        )
        
        let mess1 = Mess(
            title: "Малая столовая",
            isOpen: true,
            image: UIImage(.smallMess)!,
            meals: [cola, makaroni, kotleta, oliv, redSoup])
        
        messes.append(mess1)
        
        let teaNutr = [
            MealNutrition(type: .fat, value: 10.0),
            MealNutrition(type: .protein, value: 10.0),
            MealNutrition(type: .carbohydrates, value: 80.0),
            ]
        let tea = Meal(
            name: "Чай",
            image: UIImage(.tea),
            totalCallories: 2000,
            price: 20,
            weight: 500,
            nutritions: teaNutr,
            type: .drink,
            daysAvailable: [.monday, .tuesday, .wednesday, .thirsday, .friday, .saturday, .sunday]
        )
        
        let redSaladNutr = [
            MealNutrition(type: .fat, value: 10.0),
            MealNutrition(type: .protein, value: 10.0),
            MealNutrition(type: .carbohydrates, value: 80.0),
            ]
        let redSalad = Meal(
            name: "Винегрет",
            image: UIImage(.redSalad),
            totalCallories: 2000,
            price: 20,
            weight: 500,
            nutritions: redSaladNutr,
            type: .salad,
            daysAvailable: [.monday, .tuesday, .wednesday, .thirsday, .friday, .saturday, .sunday]
        )
        
        let chickenNutr = [
            MealNutrition(type: .fat, value: 10.0),
            MealNutrition(type: .protein, value: 10.0),
            MealNutrition(type: .carbohydrates, value: 80.0),
            ]
        let chicken = Meal(
            name: "Куры",
            image: UIImage(.chicken),
            totalCallories: 2000,
            price: 240,
            weight: 500,
            nutritions: chickenNutr,
            type: .hot,
            daysAvailable: [.monday, .tuesday, .wednesday, .thirsday, .friday, .saturday, .sunday]
        )
        
        let riseNutr = [
            MealNutrition(type: .fat, value: 10.0),
            MealNutrition(type: .protein, value: 10.0),
            MealNutrition(type: .carbohydrates, value: 80.0),
            ]
        let rise = Meal(
            name: "Рис",
            image: UIImage(.rise),
            totalCallories: 2000,
            price: 40,
            weight: 500,
            nutritions: riseNutr,
            type: .hot,
            daysAvailable: [.monday, .tuesday, .wednesday, .thirsday, .friday, .saturday, .sunday]
        )
        
        let rassolNutr = [
            MealNutrition(type: .fat, value: 10.0),
            MealNutrition(type: .protein, value: 10.0),
            MealNutrition(type: .carbohydrates, value: 80.0),
            ]
        let rassol = Meal(
            name: "Расслольник",
            image: UIImage(.rassol),
            totalCallories: 2000,
            price: 404,
            weight: 500,
            nutritions: rassolNutr,
            type: .soup,
            daysAvailable: [.monday, .tuesday, .wednesday, .thirsday, .friday, .saturday, .sunday]
        )
        
    }
}

