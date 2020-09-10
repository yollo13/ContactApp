//
//  PersonsListViewController.swift
//  ContactApp
//
//  Created by YolloArts on 09.09.2020.
//  Copyright © 2020 YolloArts. All rights reserved.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var contactList = Person.getName()
    
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)
        
        let contact = contactList[indexPath.row]
        cell.textLabel?.text = contact.fullName
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? UserDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        dvc.userDetail = contactList[indexPath.row]
    }
    
}
