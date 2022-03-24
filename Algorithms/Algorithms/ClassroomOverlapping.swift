//
//  ClassroomOverlapping.swift
//  Algorithms
//
//  Created by Abanoub Emil on 14/09/2021.
//

import Foundation

//  This problem was asked by Snapchat.
//
//  Given an array of time intervals (start, end) for classroom lectures (possibly overlapping), find the minimum number of rooms required.
//
//  For example, given [(30, 75), (0, 50), (60, 150)], you should return 2.


struct ClassroomOverlapping {
    
    let lecturesTime = [(30, 75), (500, 1000), (500, 1000), (0, 50), (60, 150), (75, 190), (151, 155), (160, 161), (163, 164), (55,74), (58,59)]
    
    func solution() {
        
        var classes = [Int: [(Int,Int)]]()
        
        for time in lecturesTime {
            if classes.isEmpty {
                classes[classes.count] = [time]
                continue
            }
            var isClassAdded = false
            for i in 0..<classes.count {
                if let values = classes[i] {
                    for value in values {
                        if value.0...value.1 ~= time.0 || value.0...value.1 ~= time.1 {
                            isClassAdded = false
                            break
                        } else {
                            isClassAdded = true
                        }
                    }
                    if isClassAdded {
                        classes[i]?.append(time)
                        break
                    }
                }
            }
            if !isClassAdded {
                classes[classes.count] = [time]
            }
        }
        print(classes)
        print(classes.count)
    }
    
    
    // MARK: BETTER SOLUTION      1>2.5,, 2>3,, 3.5>4     NOT WORKING WELL ALWAYS
    // MARK: XXXXXXXXXXXXXXX   NOT WORKING WELL ALWAYS
    
    func solution2() {
        var startingTimes = lecturesTime.map{$0.0}
        var endingTimes = lecturesTime.map{$0.1}

        startingTimes.sort()
        endingTimes.sort()
        
        var endIndex = 0
        var currentRooms = 0
        var maxRooms = 0
        
        for startTime in startingTimes {
            if startTime < endingTimes[endIndex] {
                currentRooms += 1
            } else {
                currentRooms -= 1
                endIndex += 1
            }
            maxRooms = max(currentRooms, maxRooms)
        }
        print(startingTimes)
        print(endingTimes)
        print(maxRooms)
    }
}
