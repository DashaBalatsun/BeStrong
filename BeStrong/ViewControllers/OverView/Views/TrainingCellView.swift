//
//  CellView.swift
//  BeStrong
//
//  Created by Дарья Балацун on 14.01.24.
//

import UIKit

enum CellRoundedType {
    case top, bottom, all, notRounded
}

final class TrainingCellView: UICollectionViewCell {
    
    static let id = "TrainingCellView"
    
    private let checkmarkView = UIImageView(image: R.Images.OverView.checkmarkNotDone)
       
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 3
        return view
    }()
    
    private let title: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(with: 17)
        label.textColor = R.Colors.titleGray
        return label
    }()
    
    private let subTitle: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(with: 13)
        label.textColor = R.Colors.inactive
        return label
    }()
    
    private let rightArrowView = UIImageView(image: R.Images.OverView.rightArrow)
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        addViews()
        layoutViews()
        configureView()
    }
    
    func configure(with title: String, subtitle: String, isDone: Bool, roundedType: CellRoundedType) {
        self.title.text = title.uppercased()
        self.subTitle.text = subtitle
        
        checkmarkView.image = isDone ? R.Images.OverView.checkmarkDone : R.Images.OverView.checkmarkNotDone
        
        switch roundedType {
        case .all: self.roundCornes([.allCorners], radius: 5)
        case .notRounded: self.roundCornes([.allCorners], radius: 0)
        case .bottom: self.roundCornes([.bottomLeft, .bottomRight], radius: 5)
        case .top: self.roundCornes([.topLeft, .topRight], radius: 5)
        }
    }
}

private extension TrainingCellView {
    
    func addViews() {
        addView(checkmarkView)
        addView(stackView)
        stackView.addArrangedSubview(title)
        stackView.addArrangedSubview(subTitle)
        addView(rightArrowView)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            checkmarkView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            checkmarkView.centerYAnchor.constraint(equalTo: centerYAnchor),
            checkmarkView.heightAnchor.constraint(equalToConstant: 28),
            checkmarkView.widthAnchor.constraint(equalTo: checkmarkView.heightAnchor),
            
            stackView.leadingAnchor.constraint(equalTo: checkmarkView.trailingAnchor, constant: 15),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.trailingAnchor.constraint(equalTo: rightArrowView.leadingAnchor, constant: -15),
            
            rightArrowView.centerYAnchor.constraint(equalTo: centerYAnchor),
            rightArrowView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            rightArrowView.heightAnchor.constraint(equalToConstant: 12),
            rightArrowView.widthAnchor.constraint(equalToConstant: 7)
        ])
    }
    
    func configureView() {
        backgroundColor = .white
//        layer.borderWidth = 1
//        layer.borderColor = R.Colors.separator.cgColor
    }
}

