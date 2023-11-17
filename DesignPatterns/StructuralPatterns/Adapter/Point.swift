//
//  Point.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 17/11/23.
//

import Foundation

class myPoint : CustomStringConvertible, Hashable {
    var x, y: Int
    init(_ x: Int,_ y: Int){
        self.x = x
        self.y = y
    }
    
    var description: String {
        return "\(x), \(y)"
    }
    
    var hashValue: Int {
        return (x * 397) ^ y
    }
    
    static func == (lhs: myPoint, rhs: myPoint) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}
