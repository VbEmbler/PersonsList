//
//  Person.swift
//  PersonsList
//
//  Created by Vladimir on 09/09/2020.
//  Copyright © 2020 Embler. All rights reserved.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
