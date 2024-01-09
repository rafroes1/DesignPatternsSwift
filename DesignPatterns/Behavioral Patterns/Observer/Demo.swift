//
//  Demo.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 09/01/24.
//

import Foundation

class Demo {
    init() {
        let p = PersonObserver()
        let sub = p.fallsIll.addHandler(target: self, handler: Demo.callDoctor)

        // emulate person being ill
        p.fallsIll.raise("123 London Road")

        // no longer interested in the subscription
        sub.dispose()
    }

    func callDoctor(address: String) {
        print("We need a doctor at \(address)")
    }
}

class PersonObserver {
    let fallsIll = Event<String>()
    init() {}
    func catchACold() {
    }
}

// MARK: - USAGE
/*
 let _ = Demo()
 */
