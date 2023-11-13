//
//  CoffeeFactory.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 13/11/23.
//

import Foundation

class CoffeeFactory : HotDrinkFactory {
    required init() {}
    
    func prepare(amount: Int) -> HotDrink {
        print("Grind some beand, boil water, pour \(amount)ml, add sugar, enjoy")
        return Coffee()
    }
}
