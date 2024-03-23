//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Khai Nguyen on 3/22/24.
//

import SwiftUI

struct ContentView: View {
  var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Volleyball"]
  
  var selected = "Volleyball"
  
  var body: some View {
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
  }
}

#Preview {
  ContentView()
}
