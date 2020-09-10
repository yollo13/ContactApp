//
//  test.swift
//  ContactApp
//
//  Created by YolloArts on 09.09.2020.
//  Copyright © 2020 YolloArts. All rights reserved.
//

import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    var fullName: String {
        "\(firstName)   \(lastName)"
    }
     
    static let persons = DataManager()
    
    static func getName() -> [Person]{
        
        let firstNames = persons.firstName.shuffled()
        let lastNames = persons.lastName.shuffled()
        let phoneNumbers = persons.phoneNumber.shuffled()
        let emails = persons.email.shuffled()
        
        var persons = [Person]()
        
        for index in 0..<firstNames.count {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
   
}




