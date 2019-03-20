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
    
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var collectionViewFlow: UICollectionViewFlowLayout!
    
    weak var delegate: CategoryListViewControllerDelegate?
    let cellID = "\(CategoryCell.self)"
    
    var activeCategory: Category? {
        didSet { delegate?.didChangeCategory() }
    }
    var categories = [Category]() {
        didSet { activeCategory = categories.first }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        categories = [.drink, .hot, .salad, .soup]
    }
    
    private func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: cellID, bundle: nil), forCellWithReuseIdentifier: cellID)
        collectionView.showsHorizontalScrollIndicator = false
        
        collectionViewFlow.itemSize = CGSize(width: 150, height: 45)
        collectionViewFlow.scrollDirection = .horizontal
        collectionViewFlow.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
}

extension CategoryListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
            as? CategoryCell else { return UICollectionViewCell() }
        cell.fill(category: categories[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let category = categories[indexPath.row]
        activeCategory = category
    }
}
