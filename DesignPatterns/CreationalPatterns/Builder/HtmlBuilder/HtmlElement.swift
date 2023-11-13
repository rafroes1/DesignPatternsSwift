//
//  HtmlElement.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 13/11/23.
//

import Foundation

class HtmlElement: CustomStringConvertible {
    var name = ""
    var text = ""
    var elements = [HtmlElement]()
    private let indentSize = 2
    
    init(){}
    
    init(name: String, text: String) {
        self.name = name
        self.text = text
    }
    
    var description: String {
        return description(indent: 0)
    }
    
    private func description(indent: Int) -> String{
        var result = ""
        let i = String(repeating: " ", count: indent)
        result += "\(i)<\(name)>\n"
        
        if !text.isEmpty {
            result += String(repeating: " ", count: (indent+1))
            result += text
            result += "\n"
        }
        
        for e in elements {
            result += e.description(indent: (indent+1))
        }
        
        result += "\(i)</\(name)>\n"
        
        return result
    }
}
