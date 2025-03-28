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

extension Date {
  static func updateHour(_ value: Int) -> Date {
    let calendar = Calendar.current
    return calendar.date(byAdding: .hour, value: value, to: .init()) ?? .init()
  }
}

var sampleData: [Task] = [
  .init(taskTitle: "Record Video", crationDate: .updateHour(-5), isCompleted: true, tint: .taskColor1),
  .init(taskTitle: "Redesigh Website", crationDate: .updateHour(-3), isCompleted: true, tint: .taskColor1),
  .init(taskTitle: "Go For A Walk", crationDate: .updateHour(-4), isCompleted: true, tint: .taskColor1),
  .init(taskTitle: "Edit Video", crationDate: .updateHour(0), isCompleted: true, tint: .taskColor1),
  .init(taskTitle: "Publish Video", crationDate: .updateHour(2), isCompleted: true, tint: .taskColor1),
  .init(taskTitle: "Tweet About New Video", crationDate: .updateHour(-1), isCompleted: true, tint: .taskColor1)
  
  /*
   .init(taskTitle: "Record Video", crationDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!, isCompleted: true, tint: .taskColor1),
   */
]


