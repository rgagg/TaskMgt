//
//  Home.swift
//  TaskMgt
//
//  Created by Richard Gagg on 28/3/2025.
//

import SwiftUI

struct Home: View {
  // Task manager properties
  
  @State private var currentDate: Date = .init()
  @State private var weekSlider: [[Date.Weekday]] = []
  @State private var currentWeekIndex: Int = 0
  
  var body: some View {
    
    VStack(alignment: .leading, spacing: 0){
      HeaderView()
    }
    .vSpacing(.top)
  }
  
  @ViewBuilder
  func HeaderView() -> some View {
    VStack(alignment: .leading, spacing: 5) {
      HStack(spacing: 5) {
        Text(currentDate.format("MMMM"))
          .foregroundStyle(.darkBlue)
        
        Text(currentDate.format("YYYY"))
          .foregroundStyle(.gray)
      }
      .font(.title)
      .fontWeight(.bold)
      
      Text(currentDate.formatted(date: .complete, time: .omitted))
        .font(.callout)
        .fontWeight(.semibold)
        .textScale(.secondary)
        .foregroundStyle(.gray)
      
      // Week slider
      TabView(selection: $currentWeekIndex) {
        ForEach(weekSlider.indices, id: \.self) { index in
          let week = weekSlider[index]
        }
      }
      
      
    }
    .hSpacing(.leading)
    .overlay(alignment: .topTrailing) {
      Button {
        //
      } label: {
        Image("ProfilePic")
          .resizable()
//          .scaledToFit()
          .aspectRatio(contentMode: .fill)
          .frame(width: 50, height: 50)
        .clipShape(.circle)
      }
    }
    .padding(15)
    .background(.white)
  }
}




#Preview {
  ContentView()
}
