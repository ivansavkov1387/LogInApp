//
//  UserInfoTwoViewController.swift
//  LogInApp
//
//  Created by Иван on 8/30/20.
//  Copyright © 2020 Ivan Savkov. All rights reserved.
//

import UIKit

class UserInfoTwoViewController: UIViewController {

    @IBOutlet weak var americanFootballPhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        americanFootballPhoto.layer.cornerRadius = 15
    }
}
