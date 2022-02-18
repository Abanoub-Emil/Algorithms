//
//  SelectionSort.swift
//  Algorithms
//
//  Created by Abanoub Emil on 01/02/2022.
//

import Foundation

class SelectionSort {
    
    let unSortedArr = [4, 3, 45, 23, 31, 546, 65, 32, 34, 64, 5, 7, 8, 9, 2, 0, 324, 13, 122, 11]
    
    func selectionSort( arr: [Int]) -> [Int] {
        var arr = arr
        for i in 0..<arr.count - 1 {
            var replaceIndex = i
            var min = arr[i]
            for j in i..<arr.count {
                if min > arr[j] {
                    min = arr[j]
                    replaceIndex = j
                }
            }
            let temp = arr[i]
            arr[i] = min
            arr[replaceIndex] = temp
        }
        return arr
    }
    
    func solution() {
        print(selectionSort(arr: unSortedArr))
    }
    
}
