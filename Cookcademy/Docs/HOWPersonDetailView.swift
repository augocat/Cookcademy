//
//  PersonDetailView.swift
//  Cookcademy
//
//  Created by Grahame Narborough on 5/6/2024.
//

import SwiftUI

struct PersonDetailView: View {
    var person: Person


    var body: some View {
        VStack {
            Text(person.name)
                .foregroundColor(.primary)
                .font(.title)
                .padding()
            HStack {
                Label(person.phoneNumber, systemImage: "phone")
            }
            .foregroundColor(.secondary)
        }
    }
}

#Preview {
    PersonDetailView(person: staff[0])
}
