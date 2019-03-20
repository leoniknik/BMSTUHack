//
//  MessDataSource.swift
//  RxProjectBMSTUHack
//
//  Created by Кирилл Володин on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import UIKit

final class MessDataSource: NSObject, UITableViewDataSource {
    
    var models: [Mess]
    
    let messCellID = "\(MessCell.self)"
    
    override init() {
        let bigMess = Mess(title: "Большая столовая", isOpen: true, image: #imageLiteral(resourceName: "bigMess"))
        let pancake = Mess(title: "Блинная", isOpen: true, image: #imageLiteral(resourceName: "bigMess"))
        let goodMess = Mess(title: "Столовая на 3 этаже", isOpen: false, image: #imageLiteral(resourceName: "bigMess"))
        models = [bigMess, pancake, goodMess]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: messCellID, for: indexPath)
            as? MessCell else { return UITableViewCell() }
        cell.fill(mess: models[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
}
