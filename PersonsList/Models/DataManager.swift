//
//  DataManager.swift
//  PersonsList
//
//  Created by Vladimir on 09/09/2020.
//  Copyright © 2020 Embler. All rights reserved.
//

class DataManager {
    let names = ["Carl",
                 "Tim",
                 "Allan",
                 "Ted",
                 "Sharon",
                 "Nicola",
                 "John",
                 "Steven",
                 "Aaroon",
                 "Bruce"]
    let surnames = ["Pennyworth",
                    "Black",
                    "Smith",
                    "Isaacson",
                    "Jankin",
                    "Murphy",
                    "Butler",
                    "Williams",
                    "Dow",
                    "Rebertson"]
    let phones = ["0000000",
                  "1111111",
                  "2222222",
                  "3333333",
                  "4444444",
                  "5555555",
                  "6666666",
                  "7777777",
                  "8888888",
                  "9999999"]
    let emails = ["0000000@gmail.com",
                  "1111111@gmail.com",
                  "2222222@gmail.com",
                  "3333333@gmail.com",
                  "4444444@gmail.com",
                  "5555555@gmail.com",
                  "6666666@gmail.com",
                  "7777777@gmail.com",
                  "8888888@gmail.com",
                  "9999999@gmail.com"]
    
    static var personsList: [Person] = []
    
    static func getPersonsList() -> [Person] {
        return personsList
    }
}

extension DataManager {
    static func setPesonsList() {
        
        let dataManager = DataManager()
        var personsList = DataManager.personsList
        
        let names = dataManager.names.shuffled()
        let surnames = dataManager.surnames.shuffled()
        let phones = dataManager.phones.shuffled()
        let emails = dataManager.emails.shuffled()
        
        for index in 0 ..< dataManager.names.count {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                phone: phones[index],
                                email: emails[index])
            personsList.append(person)
            DataManager.personsList.append(person)
        }
    }
}

