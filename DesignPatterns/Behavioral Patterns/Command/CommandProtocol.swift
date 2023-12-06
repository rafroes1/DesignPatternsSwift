//
//  CommandProtocol.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 29/11/23.
//

import Foundation

protocol Command {
    func call()
    func undo()
}
