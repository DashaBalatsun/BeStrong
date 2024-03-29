//
//  PercentView.swift
//  BeStrong
//
//  Created by Дарья Балацун on 9.01.24.
//

import UIKit

extension TimerView {
    final class PercentView: BaseView {
        
        private let stackView: UIStackView = {
            let view = UIStackView()
            view.axis = .vertical
            view.distribution = .fillProportionally
            view.spacing = 5
            return view
        }()
        
        private let percentLabel: UILabel = {
            let label = UILabel()
            label.font = R.Fonts.helveticaRegular(with: 23)
            label.textColor = R.Colors.titleGray
            label.textAlignment = .center
            return label
        }()
        
        private let subtitleLabel: UILabel = {
            let label = UILabel()
            label.font = R.Fonts.helveticaRegular(with: 10)
            label.textColor = R.Colors.inactive
            label.textAlignment = .center
            return label
        }()
        
        func configure(with title: String, andValue value: Int) {
            subtitleLabel.text = title
            percentLabel.text = "\(value)%"
        }
    }
}

extension TimerView.PercentView {
    
    override func addViews() {
        super.addViews()
        
        addView(stackView)
        stackView.addArrangedSubview(percentLabel)
        stackView.addArrangedSubview(subtitleLabel)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
