//
//  SettingsViewController.swift
//  BeStrong
//
//  Created by Дарья Балацун on 26.12.23.
//

import UIKit

class SettingsViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationItem.title = R.Strings.TabBar.title(for: .settings)
        title = R.Strings.NavBar.titleForSettings
    }


}
