//
//  HtmlBuilder.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 13/11/23.
//

import Foundation

class HtmlBuilder: CustomStringConvertible {
    private let rootName: String
    var root = HtmlElement()
    
    init(rootName: String) {
        self.rootName = rootName
        root.name = rootName
    }
    
    func addChild(name: String, text: String) {
        let e = HtmlElement(name: name, text: text)
        root.elements.append(e)
    }
    
    func addChildFluent(name: String, text: String) -> HtmlBuilder{
        let e = HtmlElement(name: name, text: text)
        root.elements.append(e)
        return self
    }
    
    var description: String {
        return root.description
    }
    
    func clear() {
        root = HtmlElement(name: rootName, text: "")
    }
}

// MARK: - USAGE
/*
 let builder = HtmlBuilder(rootName: "ul")
 builder.addChild(name: "li", text: "hello")
 builder.addChildFluent(name: "li", text: "world")
        .addChildFluent(name: "li", text: "Fluent")
 print(builder)
 */
