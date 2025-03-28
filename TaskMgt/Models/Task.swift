//
//  Task.swift
//  TaskMgt
//
//  Created by Richard Gagg on 28/3/2025.
//

import SwiftUI

struct Task: Identifiable {
  var id: UUID = .init()
  var taskTitle: String
  var crationDate: Date = .init()
  var isCompleted: Bool = false
  var tint: Color
}


var sampleData: [Task] = [
  .init(taskTitle: "Record Video", crationDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!, isCompleted: true, tint: .taskColor1),
  .init(taskTitle: "Redesigh Website", crationDate: Calendar.current.date(byAdding: .day, value: 7, to: Date())!, isCompleted: true, tint: .taskColor1),
  .init(taskTitle: "Go For A Walk", crationDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!, isCompleted: true, tint: .taskColor1),
  .init(taskTitle: "Edit Video", crationDate: Calendar.current.date(byAdding: .day, value: 3, to: Date())!, isCompleted: true, tint: .taskColor1),
  .init(taskTitle: "Tweet About New Video", crationDate: Calendar.current.date(byAdding: .day, value: 4, to: Date())!, isCompleted: true, tint: .taskColor1),
  ]
