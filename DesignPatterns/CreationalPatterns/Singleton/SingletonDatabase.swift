//
//  SingletonDatabase.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 16/11/23.
//

import Foundation

class SingletonDatabase {

    static var instanceCount = 0
    
    static let shared = SingletonDatabase()
    
    private init() {
        type(of: self).instanceCount += 1
    }
}

// MARK: - USAGE
/*
 let database = SingletonDatabase.shared
 */
