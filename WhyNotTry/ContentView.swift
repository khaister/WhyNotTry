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
  
  let colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
  
  @State private var selected = "Volleyball"
  @State private var bgColor = Color.blue
  
  var body: some View {
    Spacer()
    
    Text("Why not try...")
      .font(.largeTitle.bold())
    
    Circle()
      .fill(bgColor)
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
      withAnimation {
        selected = activities.randomElement() ?? defaultActivity
        bgColor = colors.randomElement() ?? Color.blue
      }
    }
    .buttonStyle(.borderedProminent)
  }
}

#Preview {
  ContentView()
}
