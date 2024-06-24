//
//  Toolbars.swift
//  Cookcademy
//
//  Created by Grahame Narborough on 6/6/2024.
//

import SwiftUI

struct Toolbars: View {
    @State private var isPresenting: Bool = false

    var body: some View {
        NavigationView {
            Text("Initial View")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        isPresenting.toggle()
                        }) {
                        Label("", systemImage: "gear")
                    }
                }
            }
            .sheet(isPresented: $isPresenting) {
                NavigationView {
                    Text("Settings Page")
                        .toolbar {
                            ToolbarItem {
                                Button("Save", action: {})
                            }
                        }
                }
            }
        }
    }
}


#Preview {
    Toolbars()
}
