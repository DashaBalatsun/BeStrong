//
//  SectionHeaderView.swift
//  BeStrong
//
//  Created by Дарья Балацун on 14.01.24.
//

import UIKit

final class SectionHeaderView: UICollectionReusableView {
    
    static let id = "SectionHeaderView"
    
    private let title: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helveticaRegular(with: 13)
        label.textColor = R.Colors.inactive
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        addViews()
        layoutViews()
    }
    
    func configure(with title: Date) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat  = "EEEE, MMMM dd"
        
        self.title.text =  dateFormatter.string(from: title).uppercased()
    }
}

private extension SectionHeaderView {
    
    func addViews() {
        addView(title)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
