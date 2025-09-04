//
//  ScoreCounterViewModel.swift
//  Score Counter
//
//  Created by Shanique Beckford on 9/3/25.
//

import Foundation
class ScoreCounterViewModel: ObservableObject {
    @Published var score: Int = 0
   @Published var showAlert: Bool = false
    
    // function that allows the score to be increased by 1
    func increaseScore() {
        score = score + 1
    }
}


