//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Khai Nguyen on 3/22/24.
//

import SwiftUI

struct ContentView: View {
  let activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash", "Volleyball", "Badminton", "Climbing", "Hockey", "Kickboxing", "Pickleball", "Skating", "Taichi", "Yoga"]
  
  let defaultActivity = "Volleyball"
  
  @State private var selected = "Volleyball"
  
  var body: some View {
    Spacer()
    
    Text("Why not try...")
      .font(.largeTitle.bold())
    
    Circle()
      .fill(.blue)
      .padding()
      .overlay(
        Image(systemName: "figure.\(selected.lowercased())")
          .font(.system(size: 144))
          .foregroundColor(.white)
      )
    
    Text("\(selected)!")
      .font(.title)
    
    Spacer()
    
    Button("Refresh") {
      selected = activities.randomElement() ?? defaultActivity
    }
    .buttonStyle(.borderedProminent)
  }
}

#Preview {
  ContentView()
}
