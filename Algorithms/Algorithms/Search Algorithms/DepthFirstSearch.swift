//
//  DepthFirstSearch.swift
//  Algorithms
//
//  Created by Abanoub Emil on 10/02/2022.
//

import Foundation

class DepthFirstSearch {
    var root: Node?
    var arr = [Int](repeating: 0, count: 10)
    
    
    func DFSExplore(start: Int) {
        var visited = [Bool](repeating: false, count: 10)
        
        arr.append(start)
        while !arr.isEmpty {
            let node = arr.removeLast()
            arr.append(node)
            visited[arr.count-1] = true
        }
    }
    
}
