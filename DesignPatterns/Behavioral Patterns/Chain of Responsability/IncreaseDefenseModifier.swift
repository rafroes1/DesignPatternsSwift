//
//  IncreaseDefenseModifier.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 29/11/23.
//

import Foundation

class IncreaseDefenseModifier: CreatureModifier {
    override func handle() {
        print("Increasing \(creature.name)'s defense")
        creature.defense += 3
        super.handle()
    }
}
