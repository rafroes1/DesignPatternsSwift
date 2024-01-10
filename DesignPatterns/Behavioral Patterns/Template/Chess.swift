//
//  Chess.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 10/01/24.
//

import Foundation

// simulate a game of chess
class Chess: Game {
    private let maxTurns = 10
    private var turn = 1

    init() {
        super.init(2)
    }

    override func start() {
        print("Starting a game of chess with \(numberOfPlayers) players.")
    }

    override var haveWinner: Bool {
        return turn == maxTurns
    }

    override func takeTurn() {
        print("Turn \(turn) taken by player \(currentPlayer).")
        currentPlayer = (currentPlayer + 1) % numberOfPlayers
        turn += 1
    }

    override var winningPlayer: Int {
        return currentPlayer
    }
}

// MARK: - USAGE
/*
 let chess = Chess()
 chess.run()
 */

