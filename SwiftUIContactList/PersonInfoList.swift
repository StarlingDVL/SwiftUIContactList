//
//  PersonInfoList.swift
//  SwiftUIContactList
//
//  Created by Юрий Скворцов on 13.05.2022.
//

import SwiftUI

struct PersonInfoList: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                Section(person.fullName) {
                    DescriptionView(person: person, image: "phone", text: person.phone)
                    DescriptionView(person: person, image: "tray", text: person.email)
                }
                .font(.title2)
            }
            .navigationTitle("Contacts")
        }
    }
}

struct PersonInfoList_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfoList(persons: Person.generatePersons())
    }
}
