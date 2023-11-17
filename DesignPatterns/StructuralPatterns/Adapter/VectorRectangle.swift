//
//  VectorRectangle.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 17/11/23.
//

import Foundation

class VectorRectangle : VectorObject {
    init(x: Int, y: Int, width: Int, height: Int) {
        super.init()
        lines.append(myLine(start: myPoint(x: x, y: y), end: myPoint(x: x+width, y: y)))
        lines.append(myLine(start: myPoint(x: x+width, y: y), end: myPoint(x: x+width, y: y+height)))
        lines.append(myLine(start: myPoint(x: x, y: y), end: myPoint(x: x, y: y+height)))
        lines.append(myLine(start: myPoint(x: x, y: y+height), end: myPoint(x: x+width, y: y+height)))
    }
}
