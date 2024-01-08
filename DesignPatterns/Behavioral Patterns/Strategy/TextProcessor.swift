//
//  TextProcessor.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 08/01/24.
//

import Foundation

class TextProcessor: CustomStringConvertible {
    private var buffer = ""
    private var listStrategy: ListStrategy

    init(_ outputFormat: OutputFormat) {
        switch outputFormat {
        case .markdown:
            listStrategy = MarkdownListStrategy()
        case .html:
            listStrategy = HtmlListStrategy()
        }
    }

    func setOutputFormat(_ outputFormat: OutputFormat) {
        switch outputFormat {
        case .markdown:
            listStrategy = MarkdownListStrategy()
        case .html:
            listStrategy = HtmlListStrategy()
        }
    }

    func appendList(_ items: [String]) {
        listStrategy.start(&buffer)
        for item in items {
            listStrategy.addListItem(buffer: &buffer, item: item)
        }
        listStrategy.end(&buffer)
    }

    func clear() {
        buffer = ""
    }

    var description: String {
        return buffer
    }
}

// MARK: - USAGE

/*
 let tp = TextProcessor(.markdown)
 tp.appendList(["foo", "bar", "baz"])
 print(tp.description)

 tp.clear()
 tp.setOutputFormat(.html)
 tp.appendList(["foo", "bar", "baz"])
 print(tp.description)
 */
