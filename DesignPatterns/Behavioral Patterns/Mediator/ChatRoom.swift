//
//  ChatRoom.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 04/01/24.
//

import Foundation

class ChatRoom {
    private var people = [mediatorPerson]()

    func broadcast(sender: String, message: String) {
        for p in people {
            if p.name != sender {
                p.receive(sender: sender, message: message)
            }
        }
    }

    func join(_ p: mediatorPerson) {
        let joinMsg = "\(p.name) joins the chat"
        broadcast(sender: "room", message: joinMsg)
        p.room = self
        people.append(p)
    }

    func message(sender: String, destination: String, message: String) {
        people.first { $0.name == destination }?.receive(sender: sender, message: message)
    }
}

// MARK: - USAGE
/*
 let room = ChatRoom()

 let john = Person("John")
 let jane = Person("Jane")

 room.join(john)
 room.join(jane)

 john.say("hi room")
 jane.say("oh, hey john")

 let simon = Person("Simon")
 room.join(simon)
 simon.say("hi everyone!")

 jane.pm(to: "Simon", message: "glad you could join us!")
 */
