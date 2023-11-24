//
//  GraphicObject.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 24/11/23.
//

import Foundation

class GraphicObject: CustomStringConvertible {
    var name: String = "Group"
    var color: String = ""

    var children = [GraphicObject]()

    init() {}

    init(name: String) {
        self.name = name
    }

    private func print(buffer: inout String, depth: Int) {
        buffer.append(String(repeating: "*", count: depth))
        buffer.append(color.isEmpty ? "" : "\(color) ")
        buffer.append("\(name)\n")

        for child in children {
            child.print(buffer: &buffer, depth: depth + 1)
        }
    }

    var description: String {
        var buffer = ""
        print(buffer: &buffer, depth: 0)
        return buffer
    }
}

// MARK: - USAGE
//provides an interface that allows you to handle both individual objects and collection of objects in an uniform manner
/*
 let drawing = GraphicObject(name: "My Drawing")
 drawing.children.append(compSquare(color: "Red"))
 drawing.children.append(compCircle(color: "Yellow"))

 let group = GraphicObject()
 group.children.append(compCircle(color: "Blue"))
 group.children.append(compSquare(color: "Blue"))

 drawing.children.append(group)

 print(drawing.description)
 */
