//
//  DayCell.swift
//  RxProjectBMSTUHack
//
//  Created by Кирилл Володин on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import UIKit

final class DayCell: UICollectionViewCell {

    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.layer.cornerRadius = containerView.frame.width / 2
        containerView.clipsToBounds = true
    }
    
    func fill(day: WeekDay) {
        titleLabel.text = day.shortTitle
        titleLabel.textAlignment = .center
    }

}
