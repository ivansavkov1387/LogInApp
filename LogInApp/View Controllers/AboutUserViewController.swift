//
//  AboutUserViewController.swift
//  LogInApp
//
//  Created by Иван on 8/29/20.
//  Copyright © 2020 Ivan Savkov. All rights reserved.
//

import UIKit

class AboutUserViewController: UIViewController {

    var helloLabelTemp: String?
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let helloLabelTemp = self.helloLabelTemp else { return }
        helloLabel.text = "Welcome to story of my life, \(helloLabelTemp) 👋"
    }
}
