//
//  BankAccountMemento.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 08/01/24.
//

import Foundation

class BankAccountMemento: CustomStringConvertible {
    private var balance: Int
    private var changes = [Memento]()
    private var current = 0

    init(_ balance: Int) {
        self.balance = balance
        changes.append(Memento(balance))
    }

    func deposit(_ amount: Int) -> Memento {
        balance += amount
        let m = Memento(balance)
        changes.append(m)
        current += 1
        return m
    }

    func restore(_ m: Memento?) {
        if let mm = m {
            balance = mm.balance
            changes.append(mm)
            current = changes.count - 1
        }
    }

    func undo() -> Memento? {
        if current > 0 {
            current -= 1
            let m = changes[current]
            balance = m.balance
            return m
        }
        return nil
    }

    func redo() -> Memento? {
        if (current + 1) < changes.count {
            current += 1
            let m = changes[current]
            balance = m.balance
            return m
        }
        return nil
    }

    public var description: String {
        return "Balance = \(balance)"
    }
}
