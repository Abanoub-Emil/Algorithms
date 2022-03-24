//
//  QuickSort.swift
//  Algorithms
//
//  Created by Abanoub Emil on 09/02/2022.
//

import Foundation

class QuickSort {
    
    var arr = [ 7, 23, 2, 6, 44, 24, 21, 75, 34, 8, 100, 150 , 200]

    func solution() {
        quickSort(low: 0, high: arr.count-1)
        print(arr)
    }
    
    func quickSort(low: Int, high: Int) {
        let mid = (low + high) / 2
        let pivot = arr[mid]
        var i = low
        var j = high
        
        while i <= j {
            while arr[i] < pivot { i += 1 }
            while arr[j] > pivot { j -= 1 }
            if i <= j {
                let temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
                print(arr)
                i += 1
                j -= 1
            }
        }
        print(arr)
        if low < j {
            quickSort(low: low, high: j)
        }
        if high > i {
            quickSort(low: i, high: high)
        }
    }
    
}
