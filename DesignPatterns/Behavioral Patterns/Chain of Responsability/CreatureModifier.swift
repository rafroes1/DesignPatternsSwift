//
//  CreatureModifier.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 29/11/23.
//

import Foundation

class CreatureModifier {
    let creature: Creature
    var next: CreatureModifier?

    init(creature: Creature) {
        self.creature = creature
    }

    func add(_ cm: CreatureModifier) {
        if next != nil {
            next!.add(cm)
        } else {
            next = cm
        }
    }

    func handle() {
        next?.handle()
    }
}
