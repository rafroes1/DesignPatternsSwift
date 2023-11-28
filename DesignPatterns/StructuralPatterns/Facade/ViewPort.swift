//
//  ViewPort.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 27/11/23.
//

import Foundation

class Viewport {
    var buffer: Buffer
    var offset = 0
    init(_ buffer: Buffer) {
        self.buffer = buffer
    }

    func getCharacterAt(_ index: Int) -> Character {
        return buffer[offset + index]
    }
}
