//
//  VectorObject.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 17/11/23.
//

import Foundation

class VectorObject: Sequence {
    var lines = [myLine]()
    
    func makeIterator() -> IndexingIterator<Array<myLine>> {
        return IndexingIterator(_elements: lines)
    }
}
