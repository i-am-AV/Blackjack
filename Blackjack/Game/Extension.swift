//
//  Extension.swift
//  Blackjack
//
//  Created by  Alexander on 30.10.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation

extension Game {
    
    func greeting() {
        
        print("Добро пожаловать в игру Blackjack!")
        print("Сколько будет игроков?")
        
        let names = ["Никита", "Алена", "Матвей", "Даня", "Саша"]
        let numberOfPlayers = Int.random(in: 1...4)
        
        for number in 1...numberOfPlayers {
            
            print("Введите имя \(number)-го игрока")
            
            let name = names.randomElement() ?? "Игрок \(number)"
            
            print("Ставка")
            
            let bet = Int.random(in: 0...100)
            print(bet)
            let newPlayer = PlayerImpl(name: name, bet: bet)
            player.array.append(newPlayer)
        }
    }
    
    func distribution() {
        
        for player in player.array {
            
            for _ in 0...1 {
                let card = dealer.giveCard()
                player.takeCard(card: card)
            }
        }
    }
    
    func takingCards() {
        
        let randomBool = Bool.random()
        
        for (index, player) in player.array.enumerated() {
            
            guard player.totalPoints != 21 else {
                
                let bet = player.bet * 3 / 2 // почему не работает self.player.bet = player.bet * 3 / 2?
                game(result: result.win, name: player.name, bet: bet)
                self.player.array.remove(at: index)
                continue
            }
            
            print("\(player.name) будет добирать?(true/false)")
            
            var needToTake = randomBool
            
            while needToTake && player.totalPoints < 21 {
                let card = dealer.giveCard()
                player.takeCard(card: card)
                print("\(player.name) будет еще добирать?(true/false)")
                needToTake = randomBool
            }
        }
    }
    
    func takingCardDealer() {
        
        while dealer.totalPoints < 17 {
            let card = dealer.giveCard()
            dealer.takeCard(card: card)
        }
    }
    
    func playingWithDealer() {
        
        for player in player.array {
            
            print("\(player.name) против крупье")
            print("\(player.totalPoints) : \(dealer.totalPoints)")
            
            let condition = player.totalPoints > dealer.totalPoints
                && player.totalPoints < 22
                || dealer.totalPoints > 21
                && player.totalPoints < 22
            
            let condition2 = player.totalPoints == dealer.totalPoints
                && player.totalPoints < 22
            
            if condition {
                
                let bet = player.bet + player.bet // почему не работает self.player.bet *= 2?
                game(result: result.win, name: player.name, bet: bet)
                
            } else if condition2 {
                
                game(result: result.draw, name: player.name, bet: player.bet)
    
            } else {
                
                let bet = 0 // почему не работает self.player.bet = 0?
                game(result: result.lose, name: player.name, bet: bet)
            }
        }
    }
    
    func game(result: String, name: String, bet: Int) {
        
        switch result {
        case "win":
            print("Игрок \(name) выиграл!")
            print("Общая сумма - \(bet)")
        case "lose":
            print("Игрок \(name) проиграл!")
            print("Остаток -  \(bet)")
        case "draw":
            print("Ничья!")
            print("Общая сумма не изменилась - \(bet)")
        default:
            break
        }
    }
}
