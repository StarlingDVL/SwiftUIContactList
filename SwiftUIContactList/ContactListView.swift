//
//  ContactListView.swift
//  SwiftUIContactList
//
//  Created by Юрий Скворцов on 13.05.2022.
//

import SwiftUI

struct ContactListView: View {
    let contactList = Person.generatePersons()
    
    var body: some View {
        NavigationView {
            List(contactList) { contact in
                Text("\(contact.fullName)")
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}
