//
//  ContentView.swift
//  Zookeeper
//
//  Created by Grahame Narborough on 4/6/2024.
//

import SwiftUI

//==============Sections(Groups)================
let animalGroups = [
    AnimalGroup(groupName: "Pets", animals: [
        Animal(name: "Dog"),
        Animal(name: "Cat"),
        Animal(name: "Parrot"),
        Animal(name: "Mouse")
    ]),
    AnimalGroup(groupName: "Farm", animals: [
        Animal(name: "Cow"),
        Animal(name: "Horse"),
        Animal(name: "Goat"),
        Animal(name: "Sheep"),
    ]),
    AnimalGroup(groupName: "Critters", animals: [
        Animal(name: "Firefly"),
        Animal(name: "Spider"),
        Animal(name: "Ant"),
        Animal(name: "Squirrel"),
    ])
]
struct AnimalGroup: Identifiable {
    var id = UUID()
    var groupName : String
    var animals : [Animal]
}
struct ContentView_dynamic: View {
    var body: some View {
        List {
            ForEach(animalGroups) { animalGroup in
                Section(header: Text(animalGroup.groupName)) {
                    ForEach(animalGroup.animals) { animal in
                        Text(animal.name)
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView_dynamic()
}
