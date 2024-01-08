//
//  Memento.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 08/01/24.
//

import Foundation

class Memento {
    let balance: Int
    init(_ balance: Int) {
        self.balance = balance
    }
}

// MARK: - USAGE
/*
 var ba = BankAccountMemento(100)
 ba.deposit(50)
 ba.deposit(25)
 print(ba)

 ba.undo()
 print("Undo 1: \(ba)")
 ba.undo()
 print("Undo 2: \(ba)")
 ba.redo()
 print("Redo 2: \(ba)")
 */
