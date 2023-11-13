//
//  PersonWorkBuilder.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 13/11/23.
//

import Foundation

class PersonWorkBuilder : PersonBuilder {
    internal init(person: Person) {
        super.init()
        self.person = person
    }
    
    func at(companyName: String) -> PersonWorkBuilder {
        person.companyName = companyName
        return self
    }
    
    func asA(position: String) -> PersonWorkBuilder {
        person.position = position
        return self
    }
    
    func earning(annualIncome: Int) -> PersonWorkBuilder {
        person.annualIncome = annualIncome
        return self
    }
}
