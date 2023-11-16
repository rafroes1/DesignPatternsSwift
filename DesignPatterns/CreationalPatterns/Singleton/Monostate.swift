//
//  Monostate.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 16/11/23.
//

import Foundation

class CEO: CustomStringConvertible {
    private static var _name = ""
    private static var _age = 0
    
    var name: String {
        get { return type(of: self)._name }
        set(value) { type(of: self)._name = value }
    }
    
    var age: Int {
        get { return type(of: self)._age }
        set(value) { type(of: self)._age = value }
    }
    
    var description: String {
        return "\(name) is \(age) years old"
    }
}

///Anyone who wants to use CEO class can make as many instances as they want but they wont know it is a singleton because they dont know how the actual properties are stored

// MARK: - USAGE
/*
 var ceo = CEO()
 ceo.name = "jonh"
 ceo.age = 60
 
 var ceo2 = CEO()
 ceo.name = "Sam"
 ceo.age = 55
 
 print(ceo)
 print(ceo2)  //will print same value for both (sam 55)
 */
