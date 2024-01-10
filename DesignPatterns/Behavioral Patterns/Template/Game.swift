//
//  Game.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 10/01/24.
//

import Foundation

// no abstract classes, so we fail in abstract methods
class Game {
    func run() // this is the template method
    {
        start()
        while !haveWinner {
            takeTurn()
        }
        print("Player \(winningPlayer) wins!")
    }

    internal func start() {
        precondition(false, "this method needs to be overridden")
    }

    internal var haveWinner: Bool {
        precondition(false, "this method needs to be overridden")
        return false
    }

    internal func takeTurn() {
        precondition(false, "this method needs to be overridden")
    }

    internal var winningPlayer: Int {
        precondition(false, "this method needs to be overridden")
        return -1
    }

    internal var currentPlayer = 0
    internal let numberOfPlayers: Int

    init(_ numberOfPlayers: Int) {
        self.numberOfPlayers = numberOfPlayers
    }
}
