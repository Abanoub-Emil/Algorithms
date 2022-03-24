//
//  IsSumOfTwoArrElements.swift
//  Algorithms
//
//  Created by Abanoub Emil on 03/09/2021.
//

import Foundation

//  This problem was recently asked by Google.
//
//  Given a list of numbers and a number k, return whether any two numbers from the list add up to k.
//
//  For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
//
//  Bonus: Can you do this in one pass?

struct IsSumOfTwoArrElements {
    let arr = [10, 15, 3, 6, 32, 12, 3, 4, 1, 2]
    let k = 17
    
    func solution() -> Bool {
        var setOfEligibleNumber = Set<Int>()
        for num in arr {
            if setOfEligibleNumber.contains(num) {
                return true
            } else {
                setOfEligibleNumber.insert(k - num)
            }
        }
        return false
    }
}
