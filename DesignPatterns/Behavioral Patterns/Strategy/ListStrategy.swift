//
//  ListStrategy.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 08/01/24.
//

import Foundation

enum OutputFormat {
    case markdown
    case html
}

protocol ListStrategy {
    init()
    func start(_ buffer: inout String)
    func end(_ buffer: inout String)
    func addListItem(buffer: inout String, item: String)
}

class MarkdownListStrategy: ListStrategy {
    required init() {}
    func start(_ buffer: inout String) {}
    func end(_ buffer: inout String) {}
    func addListItem(buffer: inout String, item: String) {
        buffer.append(" * \(item)\n")
    }
}

class HtmlListStrategy: ListStrategy {
    required init() {}
    func start(_ buffer: inout String) {
        buffer.append("<ul>\n")
    }

    func end(_ buffer: inout String) {
        buffer.append("</ul>\n")
    }

    func addListItem(buffer: inout String, item: String) {
        buffer.append("  <li>\(item)</li>\n")
    }
}
