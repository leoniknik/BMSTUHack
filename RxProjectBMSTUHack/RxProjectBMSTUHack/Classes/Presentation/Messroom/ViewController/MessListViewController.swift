//
//  MessListViewController.swift
//  RxProjectBMSTUHack
//
//  Created by Кирилл Володин on 20/03/2019.
//  Copyright © 2019 Кирилл Володин. All rights reserved.
//

import UIKit

final class MessListViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    private let dataSource = MessDataSource()
    private let estimatedRowHeight: CGFloat = 180
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = true
        }
    }
    
    private func setupUI() {
        setupTableView()
    }
    
    private func setupTableView() {
        tableView.dataSource = dataSource
        tableView.delegate = self
        tableView.register(
            UINib(nibName: dataSource.messCellID, bundle: nil),
            forCellReuseIdentifier: dataSource.messCellID
        )
        tableView.estimatedRowHeight = estimatedRowHeight
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorStyle = .none
    }
    
    private func makeMenuViewController() -> MenuViewController? {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "\(MenuViewController.self)")
            as? MenuViewController
        return viewController
    }
}

extension MessListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mess = dataSource.models[indexPath.row]
        guard let menuViewController = makeMenuViewController() else { return }
        menuViewController.mess = mess
        navigationController?.pushViewController(menuViewController, animated: true)
    }
}
