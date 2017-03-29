//
//  Brain.swift
//  FizzBuzz
//
//  Created by Hom, Kenneth on 3/27/17.
//  Copyright © 2017 Hom, Kenneth. All rights reserved.
//

import Foundation

class Brain {
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func check(number: Int) -> Move {
        if isDivisibleBy(divisor: 15, number: number) {
            return .fizzBuzz
        } else if isDivisibleBy(divisor: 3, number: number) {
            return .fizz
        } else if isDivisibleBy(divisor: 5, number: number) {
            return .buzz
        } else {
            return .number
        }
    }
}
