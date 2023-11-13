//
//  HotDrinkMachine.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 13/11/23.
//

import Foundation

class HotDrinkMachine {
    enum AvailableDrinks : String {
        case coffee = "Coffee"
        case tea = "Tea"
        
        static let all = [coffee, tea]
    }
    
    internal var namedFactories = [(String, HotDrinkFactory)]()
    
    init() {
        for drink in AvailableDrinks.all {
            let type: AnyClass? = NSClassFromString("DesignPatterns.\(drink.rawValue)Factory")
            let factory = (type as! HotDrinkFactory.Type).init()
            namedFactories.append((drink.rawValue, factory))
        }
    }
    
    func makeDrink() -> HotDrink {
        print("Available drinks")
        for i in 0..<namedFactories.count {
            let tuple = namedFactories[i]
            print("\(i): \(tuple.0)")
        }
        
        let input = Int(readLine()!)!
        return namedFactories[input].1.prepare(amount: 250)
    }
}

// MARK: - USAGE
/*
 let machine = HotDrinkMachine()
 let drink = machine.makeDrink()
 drink.consume()
 */
