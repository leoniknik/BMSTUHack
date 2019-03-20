//
//  MealInfoViewController.swift
//  ProductScreen
//
//  Created by Aleksander Evtuhov on 20/03/2019.
//  Copyright © 2019 Aleksander Evtuhov. All rights reserved.
//

import UIKit
import Charts

final class MealInfoViewController: UIViewController {
    
    @IBOutlet private var chartView: PieChartView!
    @IBOutlet private var imageView: UIImageView!
    @IBOutlet private var mealTitleView: UIView!
    @IBOutlet private var mealTitle: UILabel!
    @IBOutlet private var totalCalloryLabel: UILabel!
    @IBOutlet private var totalCalloryView: UIView!
    @IBOutlet weak var mealImageHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var meal: Meal! = ServiceLayer.instance.messes.first?.meals.first!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mealTitleView.setupCornerRadius()
        totalCalloryView.setupCornerRadius(radius: 10.0)
    }
    
    private func setupUI() {
        title = "Информация о блюде"
        imageView.image = meal.image
        mealTitle.text = meal.name
        totalCalloryLabel.text = "Каллорийность \(meal.totalCallories)к.кал"
        setupChart()
    }
    
    func setupChart() {
        var entries = [PieChartDataEntry]()
        for nutrition in meal.nutritions {
            entries.append( PieChartDataEntry(value: nutrition.value,
                                     label: nutrition.type.rawValue))
        }
        
        let set = PieChartDataSet(values: entries, label: "Пищевая ценность")
        set.drawIconsEnabled = false
        set.sliceSpace = 2
        
        
        set.colors = ChartColorTemplates.liberty()
            + ChartColorTemplates.pastel()
            + [UIColor(red: 51/255, green: 181/255, blue: 229/255, alpha: 1)]
        
        let data = PieChartData(dataSet: set)
        
        let pFormatter = NumberFormatter()
        pFormatter.numberStyle = .percent
        pFormatter.maximumFractionDigits = 1
        pFormatter.multiplier = 1
        pFormatter.percentSymbol = " %"
        data.setValueFormatter(DefaultValueFormatter(formatter: pFormatter))
        
        data.setValueFont(.systemFont(ofSize: 15))
        data.setValueTextColor(.gray)
        
        chartView.data = data
        chartView.highlightValues(nil)
        
        let legend = chartView.legend
        legend.font = .systemFont(ofSize: 15)
        legend.textColor = .gray
        legend.horizontalAlignment = .center
        legend.verticalAlignment = .bottom
        legend.orientation = .vertical
        legend.xEntrySpace = 0
        legend.yEntrySpace = 0
        legend.yOffset = 0
    }
}

extension MealInfoViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        guard scrollView.contentOffset.y < 0 else { return }
//        mealImageHeightConstraint.constant = 250 + -scrollView.contentOffset.y
        //view.layoutSubviews()
        view.layoutIfNeeded()
    }
}
