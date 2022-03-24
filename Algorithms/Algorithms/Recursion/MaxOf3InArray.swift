//
//  MaxOf3InArray.swift
//  Algorithms
//
//  Created by Abanoub Emil on 10/09/2021.
//

import Foundation

//  This problem was asked by Google.
//
//  Given an array of integers and a number k, where 1 <= k <= length of the array, compute the maximum values of each subarray of length k.
//
//  For example, given array = [10, 5, 2, 7, 8, 7] and k = 3, we should get: [10, 7, 8, 8], since:
//
//  10 = max(10, 5, 2)
//  7 = max(5, 2, 7)
//  8 = max(2, 7, 8)
//  8 = max(7, 8, 7)

//  Do this in O(n) time and O(k) space. You can modify the input array in-place and you do not need to store the results. You can simply print them out as you compute them.

struct MaxOf3InArray {
    
    let arr = [10, 5, 2, 7, 8, 7]
    let k = 3
    
    func solution() {
        for i in 0...arr.count-k {
            var maximum = arr[i]
            for index in (i+1)...(k+i-1) {
                maximum = max(maximum, arr[index])
            }
            print(maximum)
        }
    }
    
    // Better Solution using Recursion
    
    func solution2() {
        for i in 0...arr.count-k {
            recursion(maxi: arr[i], pos: i, k-1)
        }
    }
    
    func recursion(maxi: Int, pos: Int, _ numOfRecursion: Int) {
        if numOfRecursion == 0 {
            print(maxi)
            return
        }
        recursion(maxi: max(maxi, arr[pos+1]), pos: pos + 1, numOfRecursion - 1)
    }
}
