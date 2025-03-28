//
//  View+Extensions.swift
//  TaskMgt
//
//  Created by Richard Gagg on 28/3/2025.
//

import SwiftUI

// Custon view extensions

extension View {
  // Custom spacers
  
  @ViewBuilder
  func hSpacing(_ alignment: Alignment) -> some View {
    self
      .frame(maxWidth: .infinity, alignment: alignment)
  }
  
  @ViewBuilder
  func vSpacing(_ alignment: Alignment) -> some View {
    self
      .frame(maxHeight: .infinity, alignment: alignment)
  }
}
