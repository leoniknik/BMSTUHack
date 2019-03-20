//
//  MessCell.swift
//  RxProjectBMSTUHack
//
//  Created by Кирилл Володин on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import UIKit

final class MessCell: UITableViewCell {
    
    @IBOutlet private weak var statusContainerView: UIView!
    @IBOutlet private weak var statusLabel: UILabel!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var backgroundImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    func fill(mess: Mess) {
        titleLabel.text = mess.title
        backgroundImageView.image = mess.image
        backgroundImageView.contentMode = .scaleToFill
        setupStatusLabel(open: mess.isOpen)
    }
    
    private func setup() {
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = backgroundImageView.bounds
        blurEffectView.alpha = 0.6
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        backgroundImageView.addSubview(blurEffectView)
        
        statusContainerView.layer.cornerRadius = 12
        statusContainerView.clipsToBounds = true
        
        backgroundImageView.layer.shadowColor = UIColor.black.cgColor
        backgroundImageView.layer.shadowOpacity = 0.7
        backgroundImageView.layer.shadowOffset = CGSize(width: 0, height: 2)
        backgroundImageView.layer.shadowRadius = 6
        
        titleLabel.textColor = .white
    }
    
    private func setupStatusLabel(open isOpen: Bool) {
        statusLabel.text = isOpen ? "Открыто" : "Закрыто"
        statusLabel.textColor = isOpen ? .openMessGreen : .closeMessRed
    }
    
}
