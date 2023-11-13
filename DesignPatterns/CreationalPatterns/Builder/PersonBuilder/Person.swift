//
//  Person.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 13/11/23.
//

import Foundation

class Person: CustomStringConvertible {
    //Address
    var streetAddress = ""
    var postalCode = ""
    var city = ""
    
    //Employment
    var companyName = ""
    var position = ""
    var annualIncome = 0
    
    var description: String {
        return "Lives at \(streetAddress), \(postalCode), \(city). Works at \(companyName) as a \(position) earning \(annualIncome)"
    }
}
