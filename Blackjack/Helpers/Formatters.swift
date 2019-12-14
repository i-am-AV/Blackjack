//
//  Formatters.swift
//  Blackjack
//
//  Created by  Alexander on 27.10.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation

class PointsFormatter {
    
    func `return`(from card: String, if sum: Int) -> Int {
        
        let cards = Cards.self
        
        switch true {
            
        case cards.ace.contains(card) && sum + 11 > 21:
            return 1
        case cards.ace.contains(card) && sum + 11 <= 21:
            return 11
        case cards.two.contains(card):
            return 2
        case cards.three.contains(card):
            return 3
        case cards.four.contains(card):
            return 4
        case cards.five.contains(card):
            return 5
        case cards.six.contains(card):
            return 6
        case cards.seven.contains(card):
            return 7
        case cards.eight.contains(card):
            return 8
        case cards.nine.contains(card):
            return 9
        case cards.ten.contains(card):
            return 10
        default:
            return 0
        }
    }
}




