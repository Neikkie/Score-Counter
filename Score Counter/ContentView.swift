//
//  ContentView.swift
//  Score Counter
//
//  Created by Shanique Beckford on 9/1/25.
//

import SwiftUI

struct ContentView: View {
    // `@State` allows a variable within to struct to be changed
    @State var score: Int = 0
    @State var showAlert: Bool = false
    
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
                    if score == 5 {
                        
                        showAlert = true
                       
                    }
                }
                    
                .buttonStyle(.borderedProminent)
            }
            .navigationTitle("Score Counter")
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Winner is Patroits 🎉"), message: Text("Stay tuned and watch as the Patroits come back after 15 yrs"))
            }
        }
    }
}

#Preview {
    ContentView()
}
