//
//  UserInfoOneViewController.swift
//  LogInApp
//
//  Created by Иван on 8/29/20.
//  Copyright © 2020 Ivan Savkov. All rights reserved.
//

import UIKit

class UserInfoOneViewController: UIViewController {

    @IBOutlet weak var myPhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPhoto.layer.cornerRadius = 15
    }
}
