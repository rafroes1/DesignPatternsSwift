//
//  Protocols.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 13/11/23.
//

import Foundation

protocol HotDrink {
    func consume()
}

protocol HotDrinkFactory {
    func prepare(amount: Int) -> HotDrink
    init()
}
