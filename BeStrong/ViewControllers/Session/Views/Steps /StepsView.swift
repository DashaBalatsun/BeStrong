//
//  StepsView.swift
//  BeStrong
//
//  Created by Дарья Балацун on 13.01.24.
//

import UIKit

final class StepsView: BaseInfoView {
    
    private let barsView = BarsView()
        
    func configure(with items: [BarView.Data]) {
        barsView.configure(with: items)
    }
}

extension StepsView {
    
    override func addViews() {
        super.addViews()
        
        addView(barsView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        
        NSLayoutConstraint.activate([
            barsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            barsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            barsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            barsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
    
    override func configureView() {
        super.configureView()
    }
    
}

