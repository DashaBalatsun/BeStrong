//
//  XAxisView.swift
//  BeStrong
//
//  Created by Дарья Балацун on 14.01.24.
//

import UIKit

final class XAxisView: BaseView {
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.distribution = .equalSpacing
        return view
    }()
    
    func configure(with data: [ChartsView.Data]) {
        stackView.arrangedSubviews.forEach {
            $0.removeFromSuperview()
        }
        
        data.forEach {
            let label = UILabel()
            label.font = R.Fonts.helveticaRegular(with: 9)
            label.textAlignment = .center
            label.textColor = R.Colors.inactive
            label.text = $0.title.uppercased()
            
            stackView.addArrangedSubview(label)
        }
    }
}

extension XAxisView {
    
    override func addViews() {
        super.addViews()
        
        addView(stackView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
       ])
    }
    
    override func configureView() {
        super.configureView()
    }
}
