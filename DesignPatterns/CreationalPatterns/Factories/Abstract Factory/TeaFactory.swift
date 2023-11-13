//
//  TeaFactory.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 13/11/23.
//

import Foundation

class TeaFactory : HotDrinkFactory {
    required init() {}
    
    func prepare(amount: Int) -> HotDrink {
        print("Put in tea bag, boil water, pour \(amount)ml, add lemon, enjoy!")
        return Tea()
    }
}
