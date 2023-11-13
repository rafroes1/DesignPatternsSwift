//
//  Employee.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 13/11/23.
//

import Foundation

class Employee : CustomStringConvertible, Copying {
    var name: String
    var address: Address
    
    var description: String {
        return "Name: \(name), address: \(address)"
    }
    
    init(name: String, address: Address) {
        self.name = name
        self.address = address
    }
    
    required init(copyFrom other: Employee) {
        self.name = other.name
        self.address = Address(copyFrom: other.address)
    }
}
