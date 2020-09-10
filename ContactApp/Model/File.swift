//
//  File.swift
//  ContactApp
//
//  Created by YolloArts on 09.09.2020.
//  Copyright © 2020 YolloArts. All rights reserved.
//

struct Person {
    let firstName: String
    let lastName: String
    //    let phoneNumber: String?
    //    let email: String?
    var fullName: String {
        "\(firstName) - \(lastName)"
    }
}

extension Person {
    static func getName() -> [Person] {
        return [
            Person(firstName: "Alex1", lastName: "Popov"),
            Person(firstName: "Alex2", lastName: "Popov"),
            Person(firstName: "Alex3", lastName: "Popov"),
            Person(firstName: "Alex4", lastName: "Popov"),
        ]
    }
}
