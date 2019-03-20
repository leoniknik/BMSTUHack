//
//  UIImage+Loader.swift
//  RxProjectBMSTUHack
//
//  Created by Aleksander Evtuhov on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import UIKit

enum Image: String {
    case smallMess
    case mediumMess
    case bigMess
    
    case cola
    case kotleta
    case makaroni
    case oliv
    case redSoup
    
    case tea
    case redSalad
    case chicken
    case rise
    case rassol
}

extension UIImage {
    convenience init?(_ image: Image) {
        self.init(named:image.rawValue)
    }
}
