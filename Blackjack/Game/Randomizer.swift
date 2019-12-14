//
//  Randomizer.swift
//  Blackjack
//
//  Created by  Alexander on 23.11.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation

class Randomizer {

    private let names = ["Никита", "Алена", "Матвей", "Даня", "Саша"]

    func randomNumber(in range: ClosedRange<Int>) -> Int {
        return Int.random(in: range)
    }

    func randomName() -> String {
        return names.randomElement() ??  "Игрок"
    }
    
    func randomBet() -> Int {
        return Int.random(in: 0...1000)
    }

}

