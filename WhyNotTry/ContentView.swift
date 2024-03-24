//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Khai Nguyen on 3/22/24.
//

import SwiftUI

struct ContentView: View {
    let activities = [
        "Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing",
        "Golf", "Hiking", "Lacrosse", "Rugby", "Squash", "Volleyball", "Badminton", "Climbing",
        "Hockey", "Kickboxing", "Pickleball", "Skating", "Taichi", "Yoga"
    ]

    let defaultActivity = "Volleyball"

    let colors: [Color] = [
        .blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red
    ]

    @State private var selectedActivity = "Volleyball"
    @State private var activityColor = Color.blue
    @State private var activityId = 1

    var body: some View {
        Spacer()

        Text("Why not try...")
            .font(.largeTitle.bold())

        VStack {
            Circle()
                .fill(activityColor)
                .padding()
                .overlay(
                    Image(systemName: "figure.\(selectedActivity.lowercased())")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                )

            Text("**\(selectedActivity)**").font(.title).foregroundColor(activityColor)
                + Text(" _!!_").font(.title)
        }
        .transition(.slide)
        .id(activityId)

        Spacer()

        Button("Refresh") {
            withAnimation {
                selectedActivity = activities.randomElement() ?? defaultActivity
                activityColor = colors.randomElement() ?? Color.blue
                activityId += 1
            }
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    ContentView()
}
