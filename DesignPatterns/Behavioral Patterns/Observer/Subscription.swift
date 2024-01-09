//
//  Subscription.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 09/01/24.
//

import Foundation

class Subscription<T: AnyObject, U>: Invocable, Disposable {
    weak var target: T? // note: weak reference!
    let handler: (T) -> (U) -> Void
    let event: Event<U>

    init(target: T?,
         handler: @escaping (T) -> (U) -> Void,
         event: Event<U>) {
        self.target = target
        self.handler = handler
        self.event = event
    }

    func invoke(_ data: Any) {
        if let t = target {
            handler(t)(data as! U)
        }
    }

    func dispose() {
        event.eventHandlers = event.eventHandlers.filter { $0 as AnyObject? !== self }
    }
}
