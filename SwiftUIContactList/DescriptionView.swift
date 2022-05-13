//
//  DescriptionView.swift
//  SwiftUIContactList
//
//  Created by Юрий Скворцов on 13.05.2022.
//

import SwiftUI

struct DescriptionView: View {
    let person: Person
    let image: String
    let text: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: image)
                .resizable()
                .foregroundColor(.blue)
                .frame(width: 30, height: 25)
            Text(text)
                .font(.title3)
            Spacer()
        }
    }
}


struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(person: Person(id: 1, name: "Tim", surname: "Cook", phone: "1234", email: "@@@@"), image: "phone", text: "asdasd")
    }
}
