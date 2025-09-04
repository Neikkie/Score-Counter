//
//  Score_CounterApp.swift
//  Score Counter
//
//  Created by Shanique Beckford on 9/1/25.
//

import SwiftUI

@main
struct Score_CounterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ScoreCounterViewModel())
        }
    }
}
