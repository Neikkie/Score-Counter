//
//  ContentView.swift
//  Score Counter
//
//  Created by Shanique Beckford on 9/1/25.
//

import SwiftUI

struct ContentView: View {
    @State var score: Int = 0
    var body: some View {
        
        NavigationStack {
            VStack {
                Text(String(score))
                    .font(.title2)
                
                Image("patriots")
                    .resizable()
                    .frame(width: 300, height: 300)
                
                Button("Score") {
                    score = score + 1
                }
                .buttonStyle(.borderedProminent)
            }
            .navigationTitle("Score Counter")
        }
    }
}

#Preview {
    ContentView()
}
