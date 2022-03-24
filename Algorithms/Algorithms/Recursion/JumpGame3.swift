//
//  JumpGame3.swift
//  Algorithms
//
//  Created by Abanoub Emil on 03/03/2022.
//

import Foundation

//  Given an array of non-negative integers arr, you are initially positioned at start index of the array. When you are at index i, you can jump to i + arr[i] or i - arr[i], check if you can reach to any index with value 0.
//
//  Notice that you can not jump outside of the array at any time.

struct JumpGame3 {
    
    
    func solution() -> Bool {
        let arr = [  1,1,1,1,1,1,1,1,1,1,1,1,1,1]
        var memo = arr
        var isZeroFound = false
        let start = 0
        if arr[start] == 0 { return true }
        recursion(arr: arr, start: start, memo: &memo, isFound: &isZeroFound)
        return isZeroFound
    }
    
    func recursion(arr: [Int], start: Int, memo: inout [Int], isFound: inout Bool) {
        if isFound { return }
        if arr[start] == 0 {
            isFound = true;
            return;}
        
        if memo[start] == -1 { return }
        memo[start] = -1
        if (start + arr[start]) < arr.count {
            recursion(arr: arr, start: start+arr[start], memo: &memo, isFound: &isFound)
        }
        if isFound { return }

        if (start - arr[start]) >= 0  {
            recursion(arr: arr, start: start-arr[start], memo: &memo, isFound: &isFound)
        }
        
    }

}
