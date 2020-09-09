//
//  PersonDetailsViewController.swift
//  PersonsList
//
//  Created by Vladimir on 09/09/2020.
//  Copyright © 2020 Embler. All rights reserved.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
