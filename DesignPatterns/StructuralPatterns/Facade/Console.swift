//
//  Console.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 27/11/23.
//

import Foundation

class Console {
    var buffers = [Buffer]()
    var viewports = [Viewport]()
    var offset = 0

    init() {
        let b = Buffer(10, 10)
        let v = Viewport(b)
        buffers.append(b)
        viewports.append(v)
    }

    func getCharacterAt(_ index: Int) -> Character {
        // use default buffer
        return viewports[0].getCharacterAt(index)
    }
}

// console is a facade that hides all the complexity of buffer and viewport and gives the user an easy to use interface of those classes

// MARK: - USAGE

/*
 let c = Console()
 let u = c.getCharacterAt(1)
 */
