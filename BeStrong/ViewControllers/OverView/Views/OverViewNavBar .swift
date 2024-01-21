//
//  OverViewNavBar .swift
//  BeStrong
//
//  Created by Дарья Балацун on 27.12.23.
//

import UIKit

final class OverViewNavBar: BaseView {
    
    private let allWorkoutsButton = BSBtutton(with: .secondary)
    private let addButton = UIButton()
    private let titleLabel = UILabel()
    
    private let weekView = WeekView()
    
    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget( target, action: action, for: .touchUpInside)
    }
    
    func addAdditingAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action , for: .touchUpInside)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addBottomBorder(with: R.Colors.separator, height: 1)
    }
}

extension OverViewNavBar {
    
    override func addViews() {
        super.addViews()
        
        addView(addButton)
        addView(allWorkoutsButton)
        addView(titleLabel)
        addView(weekView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8.0),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15.0),
            addButton.heightAnchor.constraint(equalToConstant: 28.0),
            addButton.widthAnchor.constraint(equalToConstant: 28.0),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15.0),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28.0),
            
            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15.0),
            
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15.0),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15.0),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15.0),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15.0),
            weekView.heightAnchor.constraint(equalToConstant: 47.0)
        ])
    }
    
    override func configureView() {
        super.configureView()
        
        backgroundColor = .white
        
        titleLabel.text = R.Strings.NavBar.titleForOverview
        
        titleLabel.textColor = R.Colors.titleGray
        titleLabel.font = R.Fonts.helveticaRegular(with: 22)
        
        addButton.setImage(R.Images.Common.addButton, for: .normal)
        allWorkoutsButton.setTitle(R.Strings.OverView.allWorkoutsButton)
    }
}



