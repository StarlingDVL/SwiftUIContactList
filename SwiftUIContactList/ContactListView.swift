//
//  ContactListView.swift
//  SwiftUIContactList
//
//  Created by Юрий Скворцов on 13.05.2022.
//

import SwiftUI

struct ContactListView: View {
    let contactList: [Person]
    
    var body: some View {
        NavigationView {
            List(contactList) { contact in
                NavigationLink(destination: PersonInfoView(person: contact)) {
                    Text("\(contact.fullName)")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contactList: Person.generatePersons())
    }
}
