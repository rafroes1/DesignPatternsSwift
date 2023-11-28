//
//  FlyweightUser.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 28/11/23.
//

import Foundation

class FlyweightUser {
    static var strings = [String]()
    private var names = [Int]()

    init(_ fullName: String) {
        func getOrAdd(_ s: String) -> Int {
            if let idx = type(of: self).strings.firstIndex(of: s) {
                return idx
            } else {
                type(of: self).strings.append(s)
                return type(of: self).strings.count + 1
            }
        }
        names = fullName.components(separatedBy: " ").map { getOrAdd($0) }
    }

    static var charCount: Int {
        return strings.map { $0.utf8.count }.reduce(0, +)
    }
}

// MARK: - USAGE

/*
 let user1 = User("John Smith")
 let user2 = User("Jane Smith")
 let user3 = User("Jane Doe")
 // "Smith" and "Jane" allocated twice, eat 2x memory

 let totalChars = user1.charCount + user2.charCount + user3.charCount
 print("Total number of chars used: \(totalChars)")

 let user4 = FlyweightUser("John Smith")
 let user5 = FlyweightUser("Jane Smith")
 let user6 = FlyweightUser("Jane Doe")
 print("Total number of chars used: \(FlyweightUser.charCount)")
 */
