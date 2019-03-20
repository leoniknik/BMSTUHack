//
//  CategoryCell.swift
//  RxProjectBMSTUHack
//
//  Created by Кирилл Володин on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import UIKit

final class CategoryCell: UICollectionViewCell {

    @IBOutlet private weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func fill(category: Category) {
        categoryLabel.text = category.rawValue
    }

}
