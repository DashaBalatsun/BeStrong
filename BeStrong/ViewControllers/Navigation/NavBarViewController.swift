//
//  NavBarController.swift
//  BeStrong
//
//  Created by Дарья Балацун on 24.12.23.
//

import UIKit

final class NavBarViewController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: R.Colors.titleGray,
            .font: R.Fonts.helveticaRegular(with: 17)
        ]
        navigationBar.addBottomBorder(with: R.Colors.separator, height: 1)
    }
}
