//
//  JumpingStairs.swift
//  Algorithms
//
//  Created by Abanoub Emil on 04/09/2021.
//

import Foundation

//  There exists a staircase with N steps, and you can climb up either 1 or 2 steps at a time. Given N, write a function that returns the number of unique ways you can climb the staircase. The order of the steps matters.
//
//  For example, if N is 4, then there are 5 unique ways:
//
//  1, 1, 1, 1
//  2, 1, 1
//  1, 2, 1
//  1, 1, 2
//  2, 2
//  What if, instead of being able to climb 1 or 2 steps at a time, you could climb any number from a set of positive integers X? For example, if X = {1, 3, 5}, you could climb 1, 3, or 5 steps at a time.

struct JumpingStairs {
    
    let numOfSteps = 6
    
    
    func solution() -> Int {
        
        var storedResults = [Int](repeating: -1, count: numOfSteps + 1) // 7 refers to (numOfSteps + 1)
        return recursiveSolution(numOfStairs: numOfSteps, memo: &storedResults)
    }
    
    
    func recursiveSolution(numOfStairs: Int, memo: inout [Int]) -> Int {
        if numOfStairs == 1 { return 1 }
        if numOfStairs == 2 { return 2 }
        
        if memo[numOfStairs] != -1 {
            return memo[numOfStairs]
        }
        
        var result = 0
        result += recursiveSolution(numOfStairs: numOfStairs-1, memo: &memo)
        if numOfStairs > 2 {
            result += recursiveSolution(numOfStairs: numOfStairs-2, memo: &memo)
        }
        memo[numOfStairs] = result
        return result
    }
}
