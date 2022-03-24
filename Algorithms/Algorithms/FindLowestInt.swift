//
//  FindLowestInt.swift
//  Algorithms
//
//  Created by Abanoub Emil on 03/09/2021.
//

import Foundation

//  This problem was asked by Stripe.
//
//  Given an array of integers, find the first missing positive integer in linear time and constant space. In other words, find the lowest positive integer that does not exist in the array. The array can contain duplicates and negative numbers as well.
//
//  For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.
//
//  You can modify the input array in-place.


class FindLowestInt {
    
    var arr = [38, 19, -33, -33, 46, -26, -7, 20 ,33, 40 ,49 ,22, -25, -6 ,40, -45, -11, 4, 36, 19, 32, -8, 14, 47, -43, 5, -46, -2, -39]
    
    func solution() -> Int {
        var lowest = 1
        let newArr = arr.sorted()
        for num in newArr {
            if num == lowest {
                lowest += 1
            }
        }
        return lowest
    }
    
    // MARK: Better solution
    
    func solution2() -> Int {
        var lowest = 1
        var setOfLowest = Set<Int>()
        
        for num in arr {
            if num > 0 {
                setOfLowest.insert(num)
            }
        }
        
        for _ in setOfLowest {
            if setOfLowest.contains(lowest) {
                lowest += 1
            }
        }
        
        return lowest
    }
    
    
    // MARK: Best solution
    
    func solution3() -> Int {
        if arr.count == 1 {
            if arr[0] == 1 {
                return 2
            } else {
                return 1
            }
        }

        
        recursion(i: 0)
        for i in 1..<arr.count {
            if arr[i] != i {
                return i
            }
            if arr[i] == arr[arr.count - 1] {
                if ((arr.last ?? 0) == (arr.count - 1)) && arr[0] > arr[arr.count-1] {
                    return (arr.first ?? 0) + 1
                } else {
                    return i + 1
                }
            }
        }
        
        return arr.count + 1
    }
    
    func recursion(i: Int) {
        if i == arr.count { return }
        if arr[i] > 0 && arr[i] < arr.count && arr[i] != i && arr[arr[i]] != arr[i] {
            let temp = arr[arr[i]]
            arr[arr[i]] = arr[i]
            arr[i] = temp
            print(arr)
            recursion(i: i)
        } else {
            recursion(i: i + 1)
        }
    }
    
    
    // MARK: Best solution for swift
    
    func solution4() -> Int {
        for index in 1..<arr.count {
            if !arr.contains(index) {
                return index
            }
        }
        return 1
    }
}
