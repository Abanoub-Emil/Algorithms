//
//  ContainerWithMostWater.swift
//  Algorithms
//
//  Created by Abanoub Emil on 18/02/2022.
//

import Foundation

// You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).
//
// Find two lines that together with the x-axis form a container, such that the container contains the most water.
//
// Return the maximum amount of water a container can store.
//
// Notice that you may not slant the container.


class ContainerWithMostWater {
    
    let
    heights = [1,18,6,2,5,4,18,3,7]
    
    // MARK: O(n^2)
    
    func solution() {
        if heights.count < 2  { print("-1") }
        var maxArea = 0
        
        for i in 0..<heights.count {
            
            for j in (i+1)..<heights.count {
                let width = j - i
                let length = min(heights[i], heights[j])
                let area = length * width
                maxArea = max(maxArea, area)
            }
        }
        print(maxArea)
    }
    
    // MARK: Better Solution    O(n)
    
    func solution2() {
        if heights.count < 2  { print("-1") }
        var maxArea = 0
        var left = 0
        var right = heights.count - 1
        
        while left < right {
            let area = (right - left) * min(heights[left], heights[right])
            maxArea = max(maxArea, area)
            
            if heights[left] < heights[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        print(maxArea)
    }
}
