//
//  State.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 08/01/24.
//

import Foundation

enum State {
    case offHook
    case connecting
    case connected
    case onHold
}

enum Trigger {
    case callDialed
    case hungUp
    case callConnected
    case placedOnHold
    case takenOffHold
    case leftMessage
}

let rules = [
    State.offHook: [
        (Trigger.callDialed, State.connecting),
    ],
    State.connecting: [
        (Trigger.hungUp, State.offHook),
        (Trigger.callConnected, State.connected),
    ],
    State.connected: [
        (Trigger.leftMessage, State.offHook),
        (Trigger.hungUp, State.offHook),
        (Trigger.placedOnHold, State.onHold),
    ],
    State.onHold: [
        (Trigger.takenOffHold, State.connected),
        (Trigger.hungUp, State.offHook),
    ],
]

// MARK: - USAGE

/*
func main() {
    var state = State.offHook // starting state
    while true {
        print("The phone is currently \(state)")
        print("Select a trigger:")

        for i in 0 ..< rules[state]!.count {
            let (t, _) = rules[state]![i]
            print("\(i). \(t)")
        }

        if let input = Int(readLine()!) {
            let (_, s) = rules[state]![input]
            state = s
        }
    }
}
*/
