//
//  User.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 28/11/23.
//

import Foundation

class User {
    var fullName: String

    init(_ fullName: String) {
        self.fullName = fullName
    }

    var charCount: Int {
        return fullName.utf8.count
    }
}
