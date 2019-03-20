//
//  CategoryListViewController.swift
//  RxProjectBMSTUHack
//
//  Created by Кирилл Володин on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import UIKit

protocol CategoryListViewControllerDelegate: class {
    func didChangeCategory()
}

final class CategoryListViewController: UIViewController {

    weak var delegate: CategoryListViewControllerDelegate?
    
    var categories = [Category]() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
