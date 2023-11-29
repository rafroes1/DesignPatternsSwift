//
//  Creature.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 29/11/23.
//

import Foundation

class Creature: CustomStringConvertible {
    var name: String
    var attack: Int
    var defense: Int

    init(name: String, attack: Int, defense: Int) {
        self.name = name
        self.attack = attack
        self.defense = defense
    }

    var description: String {
        return "Name: \(name), A = \(attack), D = \(defense)"
    }
}

// MARK: - USAGE

/*
 let goblin = Creature(name: "Goblin", attack: 2, defense: 2)
 print(goblin)

 let root = CreatureModifier(creature: goblin)

 root.add(NoBonusesModifier(creature: goblin))

 print("Let's double the goblin's attack")
 root.add(DoubleAttackModifier(creature: goblin))

 print("Let's increase goblin's defense")
 root.add(IncreaseDefenseModifier(creature: goblin))
 
 root.add(NoBonusesModifier(creature: goblin))
 
 print("Let's increase goblin's defense")
 root.add(IncreaseDefenseModifier(creature: goblin))

 root.handle()
 print(goblin)
 */
