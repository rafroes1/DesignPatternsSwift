//
//  Event.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 09/01/24.
//

import Foundation

public class Event<T> {
    public typealias EventHandler = (T) -> Void

    var eventHandlers = [Invocable]()

    public func raise(_ data: T) {
        for handler in eventHandlers {
            handler.invoke(data)
        }
    }

    public func addHandler<U: AnyObject>
    (target: U, handler: @escaping (U) -> EventHandler) -> Disposable {
        let subscription = Subscription(
            target: target, handler: handler, event: self)
        eventHandlers.append(subscription)
        return subscription
    }
}
