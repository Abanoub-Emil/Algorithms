//
//  MergeSort.swift
//  Algorithms
//
//  Created by Abanoub Emil on 07/02/2022.
//

import Foundation

class MergeSort {
    
    var arr = [ 7, 23, 2, 6, 44, 24, 21, 75, 34, 8, 100, 150 , 200]
    var tempArr = [Int]()

    func solution() {
        tempArr = arr
        sort(low: 0, high: arr.count-1)
        print(arr)
    }
    
    func sort(low: Int, high: Int) {
        
        if low < high {
            
            let mid = ( low + high ) / 2
            print(" low = \(low) mid = \(mid) ")
            sort(low: low, high: mid)
            print(" mid = \(mid+1) high = \(high)")
            sort(low: mid+1, high: high)
            print("merge low = \(low) mid = \(mid) high = \(high)")
            merge(low: low, mid: mid, high: high)
            tempArr = arr
        }
    }
    
    func merge(low: Int, mid: Int, high: Int) {
        var i = low
        var j = mid + 1
        var k = low
        
        while i <= mid && j <= high {
            if tempArr[i] <= tempArr[j] {
                arr[k] = tempArr[i]
                i += 1
            } else {
                arr[k] = tempArr[j]
                j += 1
            }
            k += 1
        }
        
        while i <= mid {
            arr[k] = tempArr[i]
            i += 1
            k += 1
        }
        
//        while j <= high {
//            arr[k] = tempArr[j]
//            j += 1
//            k += 1
//
//        }
        
        print("sortedArr = \(arr)")
    }
}
