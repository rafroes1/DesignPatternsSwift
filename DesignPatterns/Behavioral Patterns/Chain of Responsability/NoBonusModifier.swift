//
//  NoBonusModifier.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 29/11/23.
//

import Foundation

class NoBonusesModifier: CreatureModifier {
    override func handle() {
        // nothing here
        print("No bonuses for you!")
        // we don't call super.handle()
    }
}
