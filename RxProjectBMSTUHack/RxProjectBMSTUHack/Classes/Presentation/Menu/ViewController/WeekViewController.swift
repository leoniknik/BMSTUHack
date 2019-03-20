//
//  WeekViewController.swift
//  RxProjectBMSTUHack
//
//  Created by Кирилл Володин on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import UIKit

final class WeekViewController: UIViewController {

    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var collectionViewFlow: UICollectionViewFlowLayout!
    
    var week = [WeekDay]()
    let dayCellID = "\(DayCell.self)"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension WeekViewController: UICollectionViewDelegate, UICollectionViewDataSource {
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
}
