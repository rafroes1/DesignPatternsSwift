//
//  Copying.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 13/11/23.
//

import Foundation

protocol Copying {
    init(copyFrom other: Self)
}

// MARK: - USAGE

/*
 var employee1 = Employee(name: "Jonh", Address(streetAddress: "123 brasilia st", city: "Brasilia"))
 
 var employee2 = Employee(copyFrom: employee1)
 employee2.name "Chris"
 employee2.address.city = "Goiania"
 
 print(employee1.description)
 print(employee2.description)
 */
