//
//  NumberOfIslands.swift
//  Algorithms
//
//  Created by Abanoub Emil on 18/02/2022.
//

import Foundation

// Given an m x n 2D binary grid grid which represents a map of '1's (land) and '0's (water), return the number of islands.
//
// An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.

class numberOfIslands {
    
    var grid =  [
        ["1","1","0","1","0"],
        ["1","0","0","0","1"],
        ["0","0","1","0","0"],
        ["0","1","0","1","1"]
      ]
    
    func solution() {
        var numberOfIslands = 0
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                
                if grid[i][j] == "1" {
                    numberOfIslands += 1
                    search(row: i, col: j, grid: &grid)
                }
            }
        }
        print(numberOfIslands)
    }
    
    func search(row: Int, col: Int, grid: inout [[String]]) {
        if row >= 0, col >= 0, row < grid.count, col < grid[0].count {
            
            if grid[row][col] == "1" {
                grid[row][col] = "0"
                search(row: row + 1, col: col, grid: &grid)
                search(row: row - 1, col: col, grid: &grid)
                search(row: row, col: col + 1, grid: &grid)
                search(row: row, col: col - 1, grid: &grid)
            }
            
        }
    }
    
}
