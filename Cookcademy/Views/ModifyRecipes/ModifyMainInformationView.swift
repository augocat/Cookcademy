//
//  ModifyMainInformationView.swift
//  Cookcademy
//
//  Created by Grahame Narborough on 10/6/2024.
//

import SwiftUI

struct ModifyMainInformationView: View {
    private let listBackgroundColor = AppColor.background
    private let listTextColor = AppColor.foreground
    
    @Binding var mainInformation: MainInformation
    var body: some View {
        NavigationView {
            Form {
                Section(content: {
                   TextField("Recipe Name", text: $mainInformation.name)
                        .listRowBackground(listBackgroundColor)
                }, header: {
                    Text("Enter recipe title")
                })
                Section(content: {
                   TextField("Author", text: $mainInformation.author)
                        .listRowBackground(listBackgroundColor)
                }, header: {
                    Text("Enter your name")
                })
                Section(content: {
                    TextEditor(text: $mainInformation.description)
                        .listRowBackground(listBackgroundColor)
                }, header: {
                    Text("Enter a description")
                })
                Section(content: {
                    Picker(selection: $mainInformation.category, content: {
                        ForEach(MainInformation.Category.allCases,
                                id: \.self) {
                            category in
                            Text(category.rawValue)
                        }
                    }) {
                        HStack {
                            Text("Category")
                            Spacer()
                            Text(mainInformation.category.rawValue)
                        }
                    }
                    .listRowBackground(listBackgroundColor)
                    .pickerStyle(.menu)
                }, header: {
                    Text("Choose 1 category")
                })
            }
            .foregroundColor(listTextColor)
        }
    }
}

struct ModifyMainInformationView_Previews: PreviewProvider {
    
    @State static var mainInformation = MainInformation(name: "Test Name", description: "Test Description", author: "Test Author", category: .lunch)
    @State static var emptyInformation = MainInformation(name: "", description: "", author: "", category: .breakfast)
        
    static var previews: some View {
        ModifyMainInformationView(mainInformation: $mainInformation)
        ModifyMainInformationView(mainInformation: $emptyInformation)
    }
}
