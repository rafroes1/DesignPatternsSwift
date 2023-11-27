//
//  myBuffer.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 27/11/23.
//

import Foundation

class Buffer {
    var width, height: Int
    var buffer: [Character]
    init(_ width: Int, _ height: Int) {
        self.width = width
        self.height = height
        buffer = [Character](repeating: " ", count: 64)
    }

    subscript(_ index: Int) -> Character {
        return buffer[index]
    }
}
