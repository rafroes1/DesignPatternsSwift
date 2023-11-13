//
//  PointFactory.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 13/11/23.
//

import Foundation

class PointFactory {
    // MARK: - Factory Methods
    
    static func createCartesian (x: Double, y: Double) -> Point {
        return Point(x: x, y: y)
    }
    
    static func createPolar (rho: Double, theta: Double) -> Point {
        return Point(rho: rho, theta: theta)
    }
    
    // MARK: - USAGE
    /*
     let pointCartesian = PointFactory.createCartesian(10, 2)
     let pointPolar = PointFactory.createPolar(1, 2)
     print(pointCartesian)
     print(pointPolar)
     */
}
