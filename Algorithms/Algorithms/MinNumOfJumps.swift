//
//  MinNumOfJumps.swift
//  Algorithms
//
//  Created by Abanoub Emil on 03/03/2022.
//

import Foundation

//  Input: nums[] = {1, 3, 5, 8, 9, 2, 6, 7, 6, 8, 9}
//  Output: true (1-> 3 -> 9 -> 9)
//  Explanation: Jump from 1st element
//  to 2nd element as there is only 1 step,
//  now there are three options 5, 8 or 9.
//  If 8 or 9 is chosen then the end node 9
//  can be reached. So 3 jumps are made.
//
//  Input:  nums[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
//  Output: true
//  Explanation: In every step a jump
//  is needed so the count of jumps is 10.


struct MinNumOfJumps {
    
    
    func solution() -> Int {
        let nums = [4,2,0,0,1,1,4,4,4,0,4,0]
        var numOfJumps = 0
        var index = 0
        var max = 0
        var didChangeIndex = false
        
        if nums.count == 1 { return 0 }
        if nums[index] >= nums.count-1 { return 1 }

        while index < nums.count {
            if index == nums.count - 1 { return numOfJumps }
            didChangeIndex = false
            let numsValue = min(nums[index]+index+1, nums.count)
            for j in (index+1)..<numsValue {
                if j+nums[j] >= nums.count - 1 {
                    return numOfJumps + 2
                }
                if ( j+nums[j] > max) && (nums[j] != 0) {
                    didChangeIndex = true
                    index = j
                    max = j + nums[j]
                }
            }
            numOfJumps += 1
            max = 0
            if !didChangeIndex { return numOfJumps }
        }
        
        return numOfJumps
    }
    
    func solution2() -> Bool {
        let nums = [4,2,0,0,1,1,4,4,4,0,4,0]

        var index = 0
        var max = 0
        var didChangeIndex = false
        
        if nums.count == 1 { return true }
        if nums[index] >= nums.count-1 { return true }

        while index < nums.count {
            if index == nums.count - 1 { return true }
            didChangeIndex = false
            let numsValue = min(nums[index]+index+1, nums.count)
            for j in (index+1)..<numsValue {
                if j+nums[j] >= nums.count - 1 {
                    return true
                }
                if ( j+nums[j] > max) && (nums[j] != 0) {
                    didChangeIndex = true
                    index = j
                    max = j + nums[j]
                }
            }
            max = 0
            if !didChangeIndex { return false }
        }
        
        return true
    }
    
}
