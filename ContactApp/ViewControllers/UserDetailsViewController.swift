//
//  UserDetailsViewController.swift
//  ContactApp
//
//  Created by YolloArts on 09.09.2020.
//  Copyright © 2020 YolloArts. All rights reserved.
//

import UIKit

class UserDetailsViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var userDetail: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneNumberLabel.text = userDetail.phoneNumber
        emailLabel.text = userDetail.email
        title = userDetail.fullName
    }
 }
