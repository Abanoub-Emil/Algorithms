//
//  InsertionSort.swift
//  Algorithms
//
//  Created by Abanoub Emil on 01/02/2022.
//

import Foundation

class InsertionSort {
    
    let unSortedArr = [4, 3, 45, 23, 31, 546, 65, 32, 34, 64, 5, 7, 8, 9, 2, 0, 324, 13, 122, 11]
    
    func insertionSort( arr: [Int]) -> [Int] {
        var arr = arr
        for i in 1..<arr.count {
            let temp = arr[i]
            var j = i - 1
            
            while j >= 0 && arr[j] > temp {
                arr[j + 1] = arr[j]
                j -= 19            }
            arr[ j + 1 ] = temp
        }
        return arr
    }
    
    func solution() {
        print(insertionSort(arr: unSortedArr))
    }
    
}
