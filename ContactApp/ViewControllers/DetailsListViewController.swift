//
//  DetailsListViewController.swift
//  ContactApp
//
//  Created by YolloArts on 09.09.2020.
//  Copyright © 2020 YolloArts. All rights reserved.
//

import UIKit

class DetailsListViewController: UITableViewController {
    
    var contactList = Person.getName()

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath)
        let contact = contactList[indexPath.section]
      
        
        if indexPath.row == 0 {
                    cell.textLabel?.text = contact.email
                } else {
                    cell.textLabel?.text = contact.phoneNumber
                }
        
        cell.imageView?.image = UIImage(contentsOfFile: "phone.down.circle")
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let contact = contactList[section]
        return contact.fullName as String
    }
    
    
    
  
}
