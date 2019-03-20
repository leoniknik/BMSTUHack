//
//  WeekViewController.swift
//  RxProjectBMSTUHack
//
//  Created by Кирилл Володин on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import UIKit

protocol WeekViewControllerDelegate: class {
    func didChange(day: WeekDay)
}

final class WeekViewController: UIViewController {

    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var collectionViewFlow: UICollectionViewFlowLayout!
    
    var activeDay: WeekDay?
    var week = [WeekDay]() {
        didSet { activeDay = week.first }
    }
    let dayCellID = "\(DayCell.self)"
    
    weak var delegate: WeekViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        week = [.friday, .saturday, .tuesday]
        setupCollection()
    }
    
    private func setupCollection() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: dayCellID, bundle: nil), forCellWithReuseIdentifier: dayCellID)
        collectionView.alwaysBounceHorizontal = true
        
        collectionViewFlow.itemSize = CGSize(width: 70, height: 70)
        collectionViewFlow.scrollDirection = .horizontal
        collectionViewFlow.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
}

extension WeekViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return week.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: dayCellID, for: indexPath)
            as? DayCell else { return UICollectionViewCell() }
        cell.fill(day: week[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let day = week[indexPath.row]
        activeDay = day
        delegate?.didChange(day: day)
    }
}
