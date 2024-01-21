//
//  SecondaryButton.swift
//  BeStrong
//
//  Created by Дарья Балацун on 26.12.23.
//

import UIKit

public enum WAButtonType {
    case primary
    case secondary
}

final class BSBtutton: UIButton {
    
    private var type: WAButtonType = .primary
    private let label = UILabel()
    private let iconView = UIImageView()
    
    init(with type: WAButtonType){
        super.init(frame: .zero)
        self.type = type
        
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        addViews()
        layoutViews()
        configure()
    }
    
    func setTitle(_ title: String?) {
        label.text = title
    }
}

private extension BSBtutton {
    
    func addViews() {
        addView(label)
        addView(iconView)
    }
    
    func layoutViews() {
        var horisontalOffset: CGFloat {
            switch type {
            case .primary: return 0
            case .secondary: return 10
            }
        }
         
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horisontalOffset),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -10),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horisontalOffset * 2)
        ])
    }
    
    func configure() {
        switch type {
        case .primary:
            label.textColor = R.Colors.inactive
            label.font = R.Fonts.helveticaRegular(with: 13)
            iconView.tintColor = R.Colors.inactive
            iconView.image = R.Images.Common.allWorkoutsButton?.withRenderingMode(.alwaysTemplate)
            
        case .secondary:
            backgroundColor = R.Colors.secondary
            layer.cornerRadius = 14
            label.textColor = R.Colors.active
            label.textAlignment = .center
            label.font = R.Fonts.helveticaRegular(with: 15)
            iconView.image = R.Images.Common.allWorkoutsButton?.withRenderingMode(.alwaysTemplate)
            iconView.tintColor = R.Colors.active
        }
        makeSystem(self)
    }
}
