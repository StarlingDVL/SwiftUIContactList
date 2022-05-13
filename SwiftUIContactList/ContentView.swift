//
//  ContentView.swift
//  SwiftUIContactList
//
//  Created by Юрий Скворцов on 13.05.2022.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.generatePersons()
    var body: some View {
        TabView {
            ContactListView(contactList: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Contacts")
                }
            PersonInfoList(persons: persons)
                .tabItem {
                    Image(systemName: "person.text.rectangle")
                    Text("Persons")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
