//
//  ContentView.swift
//  Zookeeper
//
//  Created by Grahame Narborough on 4/6/2024.
//

import SwiftUI

//======================A========================
//let animals = [
//    Animal(uniqueID: 0, name: "Dog"),
//    Animal(uniqueID: 1, name: "Cat"),
//    Animal(uniqueID: 2, name: "Parrot")
//]
//struct Animal {
//    var uniqueID : Int
//    var name: String
//}
//    var body: some View {
//        List(animals, id: \.uniqueID) { animal in
//             Text(animal.name)
//         }
//    }
//}
//======================B=========================
let animals = [
    Animal(name: "Dog"),
    Animal(name: "Cat"),
    Animal(name: "Parrot")
]
struct Animal: Identifiable {
    var id = UUID() //UUID() a unique identifier
    var name : String
}
struct ContentView: View {
    var body: some View {
        List(animals) { animal in
            Text(animal.name)
        }
    }
}
//================================================

#Preview {
    ContentView()
}
