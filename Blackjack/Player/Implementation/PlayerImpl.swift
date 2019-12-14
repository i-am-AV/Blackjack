//
//  PlayerImpl.swift
//  Blackjack
//
//  Created by  Alexander on 29.10.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation

class PlayerImpl: Player {
    
    var name: String
    var bet: Int
    var needToTake = false // нужно ли добирать?
    var cards: [String] = []
    var totalPoints = 0
    var array: [Player] = []
    
    var pointsFormatter = PointsFormatter()
    
    init(name: String, bet: Int) {
        self.name = name
        self.bet = bet
    }
    
    func takeCard(card: String) {
        let points = pointsFormatter.return(from: card, if: totalPoints)
        cards.append(card)
        totalPoints += points
        
        print("Карты игрока \(name) - \(cards), очки - \(totalPoints)")
    }
    
    
}
