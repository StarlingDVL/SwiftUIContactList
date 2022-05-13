//
//  DataManager.swift
//  SwiftUIContactList
//
//  Created by Юрий Скворцов on 13.05.2022.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let names = [
        "Tim",
        "Jason",
        "Sarah",
        "Peter",
        "Molly",
        "Henry",
        "Chris",
        "Ron",
        "Ann",
        "John"
    ]
    
    let surnames = [
        "Robinson",
        "Hellstorm",
        "Shultz",
        "Van Greten",
        "Sterling",
        "Johnson",
        "Pots",
        "Gonzales",
        "Cloud",
        "Linder"
    ]
    
    let emails = [
        "mail_11@yahoo.com",
        "mail_22@yahoo.com",
        "mail_33@yahoo.com",
        "mail_44@yahoo.com",
        "mail_55@yahoo.com",
        "mail_66@yahoo.com",
        "mail_77@yahoo.com",
        "mail_88@yahoo.com",
        "mail_99@yahoo.com",
        "mail_00@yahoo.com"
    ]
    
    let phoneNumbers = [
        "9102211",
        "9992431",
        "92406712",
        "9743569",
        "7582365",
        "5557384",
        "1426390",
        "6874444",
        "9876543",
        "3456272"
    ]
    
    private init() {}
}
