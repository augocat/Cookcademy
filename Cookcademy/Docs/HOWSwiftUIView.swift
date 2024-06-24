//
//  SwiftUIView.swift
//  Cookcademy
//
//  Created by Grahame Narborough on 5/6/2024.
//

import SwiftUI

struct Person: Identifiable {
     let id = UUID()
     var name: String
     var phoneNumber: String
 }


var staff = [
    Person(name: "Juan Chavez", phoneNumber: "(408) 555-4301"),
    Person(name: "Mei Chen", phoneNumber: "(919) 555-2481")
]
struct SwiftUIView: View {
    var body: some View {
            List {
                ForEach(company.departments) { department in
                            Section(header: Text(department.name)) {
                                ForEach(department.staff) { person in
                                    NavigationLink(destination: PersonDetailView(person: person)) {
                                        PersonRowView(person: person)
                                    }
                                }
                            }
                        }            }
        .navigationTitle("Staff Directory.")
    }
    // Placeholder
        Text("No Selection")
            .font(.headline)
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
