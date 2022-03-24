//
//  MaxSumOfNonAdjacent.swift
//  Algorithms
//
//  Created by Abanoub Emil on 04/09/2021.
//

import Foundation


//  This problem was asked by Airbnb.
//
//  Given a list of integers, write a function that returns the largest sum of non-adjacent numbers. Numbers can be 0 or negative.
//
//  For example, [2, 4, 6, 2, 5] should return 13, since we pick 2, 6, and 5. [5, 1, 1, 5] should return 10, since we pick 5 and 5.
//
//  Follow-up: Can you do this in O(N) time and constant space?


struct MaxSumOfNonAdjacent {
    
    let arr: [Int] = [5, 5, 10, 100, 10, 5]
    
    func solution() -> Int {
        var maxSum = 0
        
        if arr.count % 2 == 0 && arr.count > 2 { maxSum = (arr.first ?? 0) + (arr.last ?? 0) }
        var sum1 = 0
        var sum2 = 0
        for index in 0..<arr.count {
            if index % 2 == 0 {
                sum1 += arr[index]
            } else {
                sum2 += arr[index]
            }
        }
        if sum1 > sum2 && sum1 > maxSum {
            maxSum = sum1
        } else if sum2 > sum1 && sum2 > maxSum {
            maxSum = sum2
        }
        return maxSum
    }
}
