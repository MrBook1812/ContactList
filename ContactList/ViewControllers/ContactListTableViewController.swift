//
//  ContactListTableViewController.swift
//  ContactList
//
//  Created by Kirill Kniga on 03.03.2023.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    
    private var persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? ContactDetalisViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC?.person = persons[indexPath.row]
    }
}

// MARK: - Table view data source

extension ContactListTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = "\(person.fullname)"
        cell.contentConfiguration = content
        
        return cell
    }
}

