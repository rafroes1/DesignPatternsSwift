//
//  Line.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 17/11/23.
//

import Foundation

class myLine : CustomStringConvertible, Hashable{
    var start: myPoint
    var end: myPoint
    
    init(start: myPoint, end: myPoint) {
        self.start = start
        self.end = end
    }
    
    var description: String
     {
       return "Line from \(start) to \(end)"
     }

     var hashValue: Int
     {
       return (start.hashValue * 397) ^ end.hashValue
     }

     static func == (lhs: myLine, rhs: myLine) -> Bool
     {
       return lhs.start == rhs.start && lhs.end == rhs.end
     }
}
