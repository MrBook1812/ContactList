//
//  ContactDetalisViewController.swift
//  ContactList
//
//  Created by Kirill Kniga on 04.03.2023.
//

import UIKit

final class ContactDetalisViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpData()
    }
    
    private func setUpData() {
        title = person.fullname
        phoneNumberLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
  
}
