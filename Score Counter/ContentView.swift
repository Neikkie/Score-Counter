//
//  ContentView.swift
//  Score Counter
//
//  Created by Shanique Beckford on 9/1/25.
//

import SwiftUI

struct ContentView: View {
    // `@State` allows a variable within to struct to be changed
    @StateObject var viewModel: ScoreCounterViewModel
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Text(String(viewModel.score))
                    .font(.title2)
                
                Image("patriots")
                    .resizable()
                    .frame(width: 300, height: 300)
                
                Button("Score") {
                    
                    viewModel.increaseScore()
                    
                    if viewModel.score == 5 {
                        
                        viewModel.showAlert = true
                       
                    }
                }
                    
                .buttonStyle(.borderedProminent)
            }
            .navigationTitle("Score Counter")
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Winner is Patroits 🎉"), message: Text("Stay tuned and watch as the Patroits come back after 15 yrs"))
            }
        }
    }
}

#Preview {
    ContentView(viewModel: ScoreCounterViewModel())
}
