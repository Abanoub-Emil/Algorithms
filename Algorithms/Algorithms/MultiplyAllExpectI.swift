//
//  MultiplyAllExpectI.swift
//  Algorithms
//
//  Created by Abanoub Emil on 03/09/2021.
//

import Foundation

//  This problem was asked by Uber.
//
//  Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.
//
//  For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].
//
//  Follow-up: what if you can't use division?

struct MultiplyAllExpectI {
    
    let arr = [1, 2, 3, 4, 5]
    
    func solution() -> [Int] {
        var multiplingResult = 1
        var newArr = [Int]()
        for num in arr {
            multiplingResult *= num
        }
        for num in arr {
            newArr.append(multiplingResult/num)
        }
        return newArr
    }
    
    
    // MARK: Without division
    
    func solution2() -> [Int] {
        var newArr = [Int]()
        var multiplication = 1
        
        for i in 0..<arr.count {
            for index in 0..<arr.count {
                if index == i { continue }
                multiplication *= arr[index]
            }
            newArr.append(multiplication)
            multiplication = 1
        }
        return newArr
    }
}
