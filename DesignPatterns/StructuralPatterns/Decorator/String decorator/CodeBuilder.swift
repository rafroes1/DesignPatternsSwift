//
//  CodeBuilder.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 27/11/23.
//

import Foundation

class CodeBuilder: CustomStringConvertible {
    private var buffer: String = ""

    init() {}
    init(_ buffer: String) {
        self.buffer = buffer
    }

    func clear() {
        buffer = ""
    }

    // interface replicating the original
    // fluent interface
    func append(_ s: String) -> CodeBuilder {
        buffer.append(s)
        return self
    }

    func appendLine(_ s: String) -> CodeBuilder {
        buffer.append("\(s)\n")
        return self
    }

    public var description: String {
        return buffer
    }

    // replicate string's operator
    static func += (cb: inout CodeBuilder, s: String) {
        cb.buffer.append(s)
    }
}


// MARK: - USAGE
/*
 var cb = CodeBuilder()
 cb.appendLine("class Foo")
   .appendLine("{")
 
 cb += "  testing\n"
 
 cb.appendLine("}")
 print(cb)
 */
