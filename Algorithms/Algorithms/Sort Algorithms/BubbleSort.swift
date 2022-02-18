//
//  BubbleSort.swift
//  Algorithms
//
//  Created by Abanoub Emil on 01/02/2022.
//

import Foundation

class BubbleSort {
    
    let unSortedArr = [4, 3, 45, 23, 31, 546, 65, 32, 34, 64, 5, 7, 8, 9, 2, 0]
    
    func bubbleSort( arr: [Int]) -> [Int] {
        var arr = arr
        for i in 0..<arr.count {
            for j in 0..<arr.count-i-1 {
                if arr[j] > arr[j+1] {
                    let temp = arr[j]
                    arr[j] = arr[j+1]
                    arr[j+1] = temp
                }
            }
        }
        return arr
    }
    
    func solution() {
        print(bubbleSort(arr: unSortedArr))
    }
    
}
