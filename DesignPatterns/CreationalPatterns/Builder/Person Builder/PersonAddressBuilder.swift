//
//  PersonAddressBuilder.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 13/11/23.
//

import Foundation

class PersonAddressBuilder: PersonBuilder {
    internal init(person: Person) {
        super.init()
        self.person = person
    }
    
    func at(streetAddress: String) -> PersonAddressBuilder {
        person.streetAddress = streetAddress
        return self
    }
    
    func withPostalCode(postalCode: String) -> PersonAddressBuilder {
        person.postalCode = postalCode
        return self
    }
    
    func inCity(city: String) -> PersonAddressBuilder {
        person.city = city
        return self
    }
}
