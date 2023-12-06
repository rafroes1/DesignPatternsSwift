//
//  BankAccount.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 29/11/23.
//

import Foundation

class BankAccount: CustomStringConvertible {
    private var balance: Int = 0
    private let overdraftLimit = -500

    func deposit(_ amount: Int) {
        balance += amount
        print("Deposited \(amount), balance is now \(balance)")
    }

    func withdraw(_ amount: Int) -> Bool {
        if balance - amount >= overdraftLimit {
            balance -= amount
            print("Withdrew \(amount), balance is now \(balance)")
            return true
        }
        return false
    }

    var description: String {
        return "Balance: \(balance)"
    }
}
