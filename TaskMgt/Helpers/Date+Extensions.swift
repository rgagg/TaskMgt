//
//  Date+Extensions.swift
//  TaskMgt
//
//  Created by Richard Gagg on 28/3/2025.
//

import SwiftUI

// Date extensions needed for building UI

extension Date {  
  // Custom date format
  
  func format(_ format: String) -> String {
    let formater = DateFormatter()
    formater.dateFormat = format
    
    return formater.string(from: self)
  }
  
  // Fetching week based on given date
  
  func fetchWeek(_ date: Date = .init()) -> [Weekday] {
    let calendar = Calendar.current
    let startOfDate = calendar.startOfDay(for: date)
    
    var week: [Weekday] = []
    let weekForDate = calendar.dateInterval(of: .weekOfMonth, for: startOfDate)
    guard let startOfWeek = weekForDate?.start else {
      return []
    }
    
    // Iterate to get the full week
    
    (0..<7).forEach { index in
      if let weekday = calendar.date(byAdding: .day, value: index, to: startOfWeek) {
        week.append(.init(date: weekday))
      }
    }
    return week
  }
  
  struct Weekday: Identifiable {
    var id: UUID = .init()
    var date: Date
  }
  
}
