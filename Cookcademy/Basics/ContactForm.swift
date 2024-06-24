//
//  ContactForm.swift
//  Cookcademy
//
//  Created by Grahame Narborough on 9/6/2024.
//

import SwiftUI

struct ContactForm: View {
    @State private var emailAddress = ""
    @State private var phoneNumber = ""
    @State private var message = "Write your message here..."
    @State private var subject = "Help"
    @State private var includeLogs = false
    
    @State private var preferredContactMethod = ContactMethod.email
    
    enum ContactMethod {
        case email, phone
      }
    
    var body: some View {
        NavigationView {
            Form {
                Section(content: {
                    Picker("Contact Method", selection: $preferredContactMethod) {
                        Text("Email").tag(ContactMethod.email)
                        Text("Phone").tag(ContactMethod.phone)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    switch preferredContactMethod {
                    case .email:
                        TextField("Email Address", text: $emailAddress)
                    case .phone:
                        TextField("Phone Number", text: $phoneNumber)
                    }
                }, header: {
                    Text("How can we reach you?")
                })
                Section(content: {
                    TextField("Email Address", text: $emailAddress)
                }, header: {
                    Text("How can we reach you?")
                })
                Section(content: {
                    Picker("Subject", selection: $subject) {
                        ForEach(["Help", "Suggestion", "Bug Report"], id: \.self) { subject in
                            Text(subject)
                        }
                    }
                }, header: {
                    Text("What can we help you with?")
                })
                Section(content: {
                    TextEditor(text: $message)
                }, header: {
                    Text("Briefly explain what's going on.")
                })
                Section(content: {
                    Toggle("Include Logs", isOn: $includeLogs)
                }, footer: {
                    Text("This information will be sent anonymously.")
                })
                Button("Submit", action: {
                    print("Submit button tapped")
                })
            }
            .navigationTitle("Contact Us")
        }
    }
}

#Preview {
    ContactForm()
}
