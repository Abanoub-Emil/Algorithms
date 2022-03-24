//
//  WallsAndTiles.swift
//  Algorithms
//
//  Created by Abanoub Emil on 14/09/2021.
//

import Foundation

// This problem was asked by Google.
//
// You are given an M by N matrix consisting of booleans that represents a board. Each True boolean represents a wall. Each False boolean represents a tile you can walk on.
//
// Given this matrix, a start coordinate, and an end coordinate, return the minimum number of steps required to reach the end coordinate from the start. If there is no possible path, then return null. You can move up, leftrue, down, and right. You cannot move through walls. You cannot wrap around the edges of the board.
//
// For example, given the following board:
//
// [[false, false, false, false],
// [true, true, false, true],
// [false, false, false, false],
// [false, false, false, false]]
// and start = (3, 0) (bottom left) and end = (0, 0) (top left), the minimum number of steps required to reach the end is 7, since we would need to go through (1, 2) because there is a wall everywhere else on the second row.

class WallsAndTiles {
    
    let maze = [[false, false, false, false],
                [false, false, false, false],
                [true, true, false, true],
                [false, false, false, false],
                [false, false, false, false],
                [true, true, false, true],
                [false, false, false, false]]
    
    let start = (0, 0)
    let end = (6, 0)
    
    var maxX = 0
    var maxY = 0
    
    var currentX = 0
    var currentY = 0
    
    var visited = [Int: [Int]]()
    
    
    func solution() {
        maxX = maze.count - 1
        maxY = maze[0].count - 1
        
        currentX = start.0
        currentY = start.1
        
        visited[start.0] = [start.1]
        
        while (currentX != end.0) || (currentY != end.1) {
            
            if currentX > end.0 {
                if !moveUp() {
                    if !moveLeft() {
                        if !moveRight() {
                            if !moveDown() {
                                print("NULL")
                                break
                            }
                            
                        }
                    }
                }
            } else if currentY > end.1 {
                if !moveLeft() {
                    if !moveUp() {
                        if !moveDown() {
                            if !moveRight() {
                                print("NULL")
                                break
                            }
                        }
                    }
                }
            } else if currentX < end.0 {
                if !moveDown() {
                    if !moveRight() {
                        if !moveLeft() {
                            if !moveUp() {
                                print("NULL")
                                break
                            }
                        }
                    }
                }
            } else if currentY < end.1 {
                if !moveRight() {
                    if !moveDown() {
                        if !moveUp() {
                            if !moveLeft() {
                                print("NULL")
                                break
                            }
                        }
                    }
                }
            }
        }
    }
    
    func moveDown() -> Bool {
        if currentX < maxX, !maze[currentX+1][currentY], !(visited[currentX+1]?.contains(currentY) ?? false) {
            currentX += 1
            print("moveDown")
            addToVisited()
            return true
        }
        return false
    }
    
    func moveUp() -> Bool {
        if currentX > 0, !maze[currentX-1][currentY], !(visited[currentX-1]?.contains(currentY) ?? false) {
            currentX -= 1
            print("moveUp")
            addToVisited()
            return true
        }
        return false
    }
    
    func moveRight() -> Bool {
        if currentY < maxY, !maze[currentX][currentY+1], !(visited[currentX]?.contains(currentY+1) ?? false) {
            currentY += 1
            print("moveRight")
            addToVisited()
            return true
        }
        return false
    }
    
    func moveLeft() -> Bool {
        if currentY > 0, !maze[currentX][currentY-1], !(visited[currentX]?.contains(currentY-1) ?? false) {
            currentY -= 1
            print("moveLeft")
            addToVisited()
            return true
        }
        return false
    }
    
    func addToVisited() {
        if visited[currentX] != nil {
            visited[currentX]?.append(currentY)
        } else {
            visited[currentX] = [currentY]
        }
    }
    
}
