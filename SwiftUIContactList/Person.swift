//
//  Person.swift
//  SwiftUIContactList
//
//  Created by Юрий Скворцов on 13.05.2022.
//

import Foundation

struct Person: Identifiable {
    var id: Int
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func generatePersons() -> [Person] {
        let shuffledNames = DataManager.shared.names.shuffled()
        let shuffledSurnames = DataManager.shared.surnames.shuffled()
        let shuffledPhones = DataManager.shared.phoneNumbers.shuffled()
        let shuffledEmails = DataManager.shared.emails.shuffled()
        
        var persons: [Person] = []
        
        for index in 0..<shuffledNames.count {
            let person = Person(
                id: index,
                name: shuffledNames[index],
                surname: shuffledSurnames[index],
                phone: shuffledPhones[index],
                email: shuffledEmails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
