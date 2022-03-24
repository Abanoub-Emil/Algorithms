//
//  Pascal's Triangle.swift
//  Algorithms
//
//  Created by Abanoub Emil on 18/02/2022.
//

import Foundation

class PascalsTraingle {
    
    let numOfRows = 10
    var pascalTriangle = [[], [1], [1,1]]
    
    func solution() {
        
        if pascalTriangle.count - 1 >= numOfRows {
            print(pascalTriangle)
            return
        } else {
            for count in pascalTriangle.count...numOfRows {
                if pascalTriangle.count == count {
                    let lastRow = pascalTriangle.last ?? []
                    var arr = [Int](repeating: 1, count: count)
                    for i in 1..<lastRow.count {
                        arr[i] = lastRow[i] + lastRow[i - 1]
                    }
                    pascalTriangle.append(arr)
                }
            }
        }
        print(pascalTriangle)
    }
 
    
}
