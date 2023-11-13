//
//  Point.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 13/11/23.
//

import Foundation

class Point : CustomStringConvertible{
    var x, y : Double
    
    var description: String {
        return "x = \(x), y = \(y)"
    }
    
    internal init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    internal init(rho: Double, theta: Double) {
        self.x = rho * cos(theta)
        self.y = rho * sin(theta)
    }
}
