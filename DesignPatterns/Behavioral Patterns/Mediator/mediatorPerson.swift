//
//  mediatorPerson.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 04/01/24.
//

import Foundation

class mediatorPerson {
    var name: String
    var room: ChatRoom? // not in a room
    private var chatLog = [String]()

    init(_ name: String) {
        self.name = name
    }

    func receive(sender: String, message: String) {
        let s = "\(sender): `\(message)`"
        print("[\(name)'s chat session] \(s)")
        chatLog.append(s)
    }

    func say(_ message: String) {
        room?.broadcast(sender: name, message: message)
    }

    func pm(to target: String, message: String) {
        room?.message(sender: name, destination: target, message: message)
    }
}
