//
//  Player.swift
//  Blackjack
//
//  Created by  Alexander on 29.10.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation

protocol Player {
    
    var name: String { get }
    var bet: Int { get set }
    var cards: [String] { get }
    var totalPoints: Int { get }
    var array: [Player] { get set }
    func takeCard(card: String)
    
}
