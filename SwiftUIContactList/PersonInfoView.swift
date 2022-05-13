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
        VStack {
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

struct DescriptionView: View {
    let person: Person
    let image: String
    let text: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: image)
                .resizable()
                .foregroundColor(.blue)
                .frame(width: 35, height: 30)
            Text(text)
                .font(.title)
            Spacer()
        }
    }
}
