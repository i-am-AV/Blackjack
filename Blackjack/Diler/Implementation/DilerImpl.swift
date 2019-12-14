//
//  DilerImpl.swift
//  Blackjack
//
//  Created by  Alexander on 29.10.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation

class DealerImpl: Dealer {
    
    var cards: [String] = []
    var totalPoints = 0
    var pointsFormatter = PointsFormatter()
    
    func takeCard(card: String) {
        let points = pointsFormatter.return(from: card, if: totalPoints)
        cards.append(card)
        totalPoints += points
        
        print("Карты крупье - \(cards), очки - \(totalPoints)")
    }
    
    func giveCard() -> String {
        return Array.generate(Array<String>())()
    }
}
