//
//  Game.swift
//  Blackjack
//
//  Created by  Alexander on 29.10.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation

class Game {
    
    var dealer: Dealer
    var player: Player
    let result = Result.self
    let randomizer = Randomizer()
    
    init(dealer: Dealer, player: Player) {
        self.dealer = dealer
        self.player = player
    }
    
    func start() {
        greeting() // приветствие
        distribution() // раздача
        takingCards() // добор
        takingCardDealer() // добор крупье
        playingWithDealer() // сравнение с крупье
    }
}

