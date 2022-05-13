//
//  PersonInfoView.swift
//  SwiftUIContactList
//
//  Created by Юрий Скворцов on 13.05.2022.
//

import SwiftUI

struct PersonInfoView: View {
    let person: Person
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 250, height: 250)
            DescriptionView(person: person, image: "phone", text: person.phone)
            DescriptionView(person: person, image: "tray", text: person.email)
            Spacer()
        }
        .navigationTitle(person.fullName)
        .padding()
    }
}


struct PersonInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfoView(person: Person(id: 1, name: "Tim", surname: "Cook", phone: "123", email: "a@a"))
    }
}
