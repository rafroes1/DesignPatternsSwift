//
//  CarProxy.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 28/11/23.
//

import Foundation

class CarProxy: Vehicle {
    private let car = Car()
    private let driver: Driver

    init(driver: Driver) {
        self.driver = driver
    }

    func drive() {
        if driver.age >= 18 {
            car.drive()
        } else {
            print("Driver too young")
        }
    }
}

// MARK: - USAGE
///uses the carproxy classe as a level of protection to make sure that the driver is over a certain age

/*
 let car: Vehicle = CarProxy(driver: Driver(age: 12))
 car.drive()
 */
