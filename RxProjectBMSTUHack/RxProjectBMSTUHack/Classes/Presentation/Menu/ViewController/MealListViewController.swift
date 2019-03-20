//
//  MealListViewController.swift
//  RxProjectBMSTUHack
//
//  Created by Кирилл Володин on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import UIKit

final class MealListViewController: UIViewController {
    
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var collectionView: UICollectionView!
    let segue = "ToDetail"
    var meals = [Meal]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let size = (view.frame.width-60)/2
        collectionViewFlowLayout.itemSize = CGSize(width: size, height: size)
        collectionViewFlowLayout.scrollDirection = .vertical
        collectionViewFlowLayout.sectionInset = UIEdgeInsets(top:20, left: 20, bottom: 20, right: 20)
        collectionView.register(MealCell.self, forCellWithReuseIdentifier: "\(MealCell.self)")
    }
}

extension MealListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return meals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(MealCell.self)", for: indexPath) as? MealCell else { return UICollectionViewCell() }
        let meal = meals[indexPath.item]
        cell.mealImage.image = meal.image
        cell.title.text = meal.name
        cell.price.text = "\(meal.price) Руб"
        return cell
    }
    
    
}

extension MealListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: segue, sender: meals[indexPath.item])
    }
}
