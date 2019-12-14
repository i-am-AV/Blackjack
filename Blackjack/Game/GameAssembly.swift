//
//  GameAssembly.swift
//  Blackjack
//
//  Created by  Alexander on 29.10.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation

class GameAssembly {
    static var game: Game {
        let dealer = DealerImpl()
        let player = PlayerImpl(name: "", bet: 0)
    
        let game = Game(dealer: dealer,
                        player: player)
        return game
    }
}
