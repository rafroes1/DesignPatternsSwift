//
//  DoubleAttackModifier.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 29/11/23.
//

import Foundation

class DoubleAttackModifier: CreatureModifier {
    override func handle() {
        print("Doubling \(creature.name)'s attack")
        creature.attack *= 2
        super.handle()
    }
}
