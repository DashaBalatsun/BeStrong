//
//  MonthlyPerfomanceView.swift
//  BeStrong
//
//  Created by Дарья Балацун on 13.01.24.
//

import UIKit

final class MonthlyPerfomanceView: BaseInfoView {
    
    private let chartView = ChartsView()
    
    func configure(with items: [ChartsView.Data], topChartOffset: Int) {
        chartView.configure(with: items, topChartOffset: topChartOffset)
    }
}

extension MonthlyPerfomanceView {
    
    override func addViews() {
        super.addViews()
        
        addView(chartView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        
        NSLayoutConstraint.activate([
            chartView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            chartView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            chartView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            chartView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
    
    override func configureView() {
        super.configureView()
        
        chartView.backgroundColor = .clear
    }
    
}


