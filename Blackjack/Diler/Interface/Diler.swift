//
//  Diler.swift
//  Blackjack
//
//  Created by  Alexander on 29.10.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation

protocol Dealer {
    
    var cards: [String] { get }
    var totalPoints: Int { get }
    
    func giveCard() -> String
    func takeCard(card: String)
}
