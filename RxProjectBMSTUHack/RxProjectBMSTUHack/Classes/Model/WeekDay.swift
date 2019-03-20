//
//  WeekDay.swift
//  RxProjectBMSTUHack
//
//  Created by Кирилл Володин on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import Foundation

enum WeekDay {
    case monday
    case tuesday
    case wednesday
    case thirsday
    case friday
    case saturday
    case sunday
    
    var shortTitle: String {
        switch self {
        case .monday:
            return "ПН"
        case .tuesday:
            return "ВТ"
        case .wednesday:
            return "СР"
        case .thirsday:
            return "ЧТ"
        case .friday:
            return "ПТ"
        case .saturday:
            return "СБ"
        case .sunday:
            return "ВС"
        }
    }
}
