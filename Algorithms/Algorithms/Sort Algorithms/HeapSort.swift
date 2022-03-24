//
//  HeapSort.swift
//  Algorithms
//
//  Created by Abanoub Emil on 10/02/2022.
//

import Foundation

class HeapSort {
    
    var arr = [2, 23, 7, 6, 44, 24, 21, 75, 34, 8, 100, 150 , 200]

    func solution() {
        heapSort()
        print(arr)
    }
    
    func heapSort() {

        buildHeap(size: arr.count)
        print(arr)
        
        var index = arr.count - 1
        
        while index >= 1 {
            let temp = arr[0]
            arr[0] = arr[index]
            arr[index] = temp
            
            heapify(size: index, parentIndex: 0)
            print(arr)
            index -= 1
        }
    }
    
    // we start our heapify process from the last parent in the array
    // till the first parent in the array
    
    func buildHeap(size: Int) {
        var index = (size / 2) - 1      // index of the last parent in the array
        while index >= 0 {
            heapify(size: size, parentIndex: index)
            print(arr)
            index -= 1
        }
    }
    
    func heapify(size: Int, parentIndex: Int) {
        let leftChildIndex = 2 * parentIndex + 1
        let rightChildIndex = 2 * parentIndex + 2
        var maxIndex = parentIndex      // the index of the max node in the sub tree
        
        if leftChildIndex < size, arr[leftChildIndex] > arr[maxIndex] {
            maxIndex = leftChildIndex
        }
        if rightChildIndex < size, arr[rightChildIndex] > arr[maxIndex] {
            maxIndex = rightChildIndex
        }
        
        if maxIndex != parentIndex {
            let temp = arr[parentIndex]
            arr[parentIndex] = arr[maxIndex]
            arr[maxIndex] = temp
            // we do heapify again in order to check if the sub parent can change their position too
            // eg: if we are on the first parent and we changed the child with parent then the new child which is parent to other may need heapify with his children
            
            heapify(size: size, parentIndex: maxIndex)
        }

    }
}

