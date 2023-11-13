//
//  PersonBuilder.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 13/11/23.
//

import Foundation

class PersonBuilder {
    var person = Person()
    
    var lives: PersonAddressBuilder {
        return PersonAddressBuilder(person: person)
    }
    
    var works: PersonWorkBuilder {
        return PersonWorkBuilder(person: person)
    }
    
    func build() -> Person {
        return person
    }
}

// MARK: - USAGE
/*
 let personBuilder = PersonBuilder()
 let person = personBuilder
                            .lives.at(streetAddress: "123 street").inCity(city: "brasilia").withPostalCode(postalCode: "17170123")
                            .works.at(companyName: "amazon").asA(position: "soft eng").earning(annualIncome: 120000)
                            .build()
 print(person)
 */
