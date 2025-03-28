//
//  ContentView.swift
//  TaskMgt
//
//  Created by Richard Gagg on 28/3/2025.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Home()
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(Color("BackGround"))
      .preferredColorScheme(.light)
  }
}

#Preview {
  ContentView()
}
