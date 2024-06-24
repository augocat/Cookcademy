//
//  TabViews.swift
//  Cookcademy
//
//  Created by Grahame Narborough on 18/6/2024.
//

import SwiftUI

struct TabViews: View {
  var body: some View {
    TabView {
      Text("Home View")
        .tabItem {
          Label("Home", systemImage: "list.dash")
        }
      Text("Profile View")
        .tabItem {
          Label("Profile", systemImage: "person.circle.fill")
        }
    }
    .tabViewStyle(.page)
  }
}

#Preview {
    TabViews()
}
