//
//  CardGenerator.swift
//  Blackjack
//
//  Created by  Alexander on 26.10.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation

let cards = ["🂡", "🂢", "🂣", "🂤", "🂥",
             "🂦", "🂧", "🂨", "🂩", "🂪",
             "🂫", "🂭", "🂮", "🂱", "🂲",
             "🂳", "🂴", "🂵", "🂶", "🂷",
             "🂸", "🂹", "🂺", "🂻", "🂽",
             "🂾", "🃁", "🃂", "🃃", "🃄",
             "🃅", "🃆", "🃇", "🃈", "🃉",
             "🃊", "🃋", "🃍", "🃎", "🃑",
             "🃒", "🃓", "🃔", "🃕", "🃖",
             "🃗", "🃘", "🃙", "🃚", "🃛",
             "🃝", "🃞"]

extension Array where Element == String {
    func generate() -> String {
        return cards.randomElement() ?? ""
    }
}
