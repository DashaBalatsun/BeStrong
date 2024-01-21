//
//  BarsView.swift
//  BeStrong
//
//  Created by Дарья Балацун on 13.01.24.
//

import UIKit

final class BarsView: BaseView {
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.distribution = .fillEqually
        return view
    }()
    
    func configure(with data: [BarView.Data]) {
        data.forEach {
            let barView = BarView(data: $0)
            stackView.addArrangedSubview(barView)
        }
    }
}

extension BarsView {
    
    override func addViews() {
        super.addViews()
        
        addView(stackView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor) ,
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureView() {
        super.configureView()
    }
}
