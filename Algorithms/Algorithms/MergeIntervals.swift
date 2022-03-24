//
//  MergeIntervals.swift
//  Algorithms
//
//  Created by Abanoub Emil on 18/02/2022.
//

import Foundation

// Asked by Netflix
// Given an array of intervaks where intervals[i] = [start, end], merge all overlapping intervals and return an array of the non-overlapping intervals that cover all the intervals in the input

// example
// Input: intervals = [[1,3], [2,6], [8,10], [15,18]]
// OutPut: [[1,6], [8,10], [15,18]]
// Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6]

class MergeIntervals {
    var intervals = [[30,40], [15,18], [1,3], [2,6], [8,10], [15,17], [16, 25], [17, 20], [18,24], [26, 38], [46, 87]]
    
    var result = [[Int]]()
    
    func solution() {
        intervals = intervals.sorted { $0[0] < $1[0] }
        result.append(intervals.first ?? [])
        for index in 1..<intervals.count {
            let lastArr = result.last ?? []
            
            if lastArr[1] >= intervals[index][0] {
                result[result.count-1] = [min(intervals[index][0], lastArr[0]),
                                      max(intervals[index][1], lastArr[1]) ]
            } else {
                result.append(intervals[index])
            }
        }
        print(result)
    }
}
