//
//  Enums.swift
//  Blackjack
//
//  Created by  Alexander on 30.10.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation

enum Result {
    static let win = "win"
    static let lose = "lose"
    static let draw = "draw"
}

enum Cards {
    static let ace: Set =   ["🂡", "🂱", "🃁", "🃑"]
    static let two: Set =   ["🂢", "🂲", "🃂", "🃒"]
    static let three: Set = ["🂣", "🂳", "🃃", "🃓"]
    static let four: Set =  ["🂤", "🂴", "🃄", "🃔"]
    static let five: Set =  ["🂥", "🂵", "🃅", "🃕"]
    static let six: Set =   ["🂦", "🂶", "🃆", "🃖"]
    static let seven: Set = ["🂧", "🂷", "🃇", "🃗"]
    static let eight: Set = ["🂨", "🂸", "🃈", "🃘"]
    static let nine: Set =  ["🂩", "🂹", "🃉", "🃙"]
    static let ten: Set =   ["🂪", "🂫", "🂭", "🂮",
                             "🂺", "🂻", "🂽", "🂾",
                             "🃊", "🃋", "🃍", "🃎",
                             "🃚", "🃛", "🃝", "🃞"]
}
