//
//  ObserverProtocols.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 09/01/24.
//

import Foundation

protocol Invocable: class {
    func invoke(_ data: Any)
}

public protocol Disposable {
    func dispose()
}
