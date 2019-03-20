//
//  MenuViewController.swift
//  RxProjectBMSTUHack
//
//  Created by Кирилл Володин on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import UIKit

final class MenuViewController: UIViewController {

    var mess: Mess!
    
    var weekViewController: WeekViewController! {
        return children.compactMap({ $0 as? WeekViewController }).first
    }
    
    var categoriesViewController: CategoryListViewController! {
        return children.compactMap({ $0 as? CategoryListViewController }).first
    }
    
    var mealsViewController: MealListViewController! {
        return children.compactMap({ $0 as? MealListViewController }).first
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = false
        }
    }
    
}
