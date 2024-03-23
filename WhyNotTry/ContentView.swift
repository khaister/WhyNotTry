//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Khai Nguyen on 3/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Circle()
                .fill(.blue)
                .padding()
                .overlay(
                    Image(systemName: "figure.archery")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                )
            
            Text("Archery!")
                .font(.title)
        }
    }
}

#Preview {
    ContentView()
}
