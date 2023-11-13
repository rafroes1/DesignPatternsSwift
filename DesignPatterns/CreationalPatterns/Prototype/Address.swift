//
//  Address.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 13/11/23.
//

import Foundation

class Address : CustomStringConvertible, Copying {
    var streetAddress: String
    var city: String
    
    var description: String {
        return "\(streetAddress), \(city)"
    }
    
    init(streetAddress: String, city: String) {
        self.streetAddress = streetAddress
        self.city = city
    }
    
    required init(copyFrom other: Address) {
        self.streetAddress = other.streetAddress
        self.city = other.city
    }
}
