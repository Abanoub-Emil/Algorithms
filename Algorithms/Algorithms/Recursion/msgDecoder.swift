//
//  msgDecoder.swift
//  Algorithms
//
//  Created by Abanoub Emil on 03/09/2021.
//

import Foundation

//  This problem was asked by Facebook.
//
//  Given the mapping a = 1, b = 2, ... z = 26, and an encoded message, count the number of ways it can be decoded.
//
//  For example, the message '111' would give 3, since it could be decoded as 'aaa', 'ka', and 'ak'.
//
//  You can assume that the messages are decodable. For example, '001' is not allowed.

struct msgDecoder {
    
    let map = [1: "a", 2: "b", 3: "c", 4: "d", 5: "e",
               6: "f", 7: "g", 8: "h", 9: "i", 10: "j",
               11: "k", 12: "l", 13: "m", 14: "n", 15: "o",
               16: "p", 17: "q", 18: "r", 19: "s", 20: "t",
               21: "u", 22: "v", 23: "w", 24: "x", 25: "y", 26: "z"]
    
    let msg = "1213151"
    let asqw = "129129129129129"
//    1,2,9,1,2,9,1,2,9,1,2,9,1,2  -- 12,9,1,2,9,1,2,9,1,2  --  1,2,9,12,9,1,2,9,1,2 -- 2 more   16 cases
//  1 - 5 - 10 - 10 - 5 - 1
//  1 - 4 - 6 - 4 - 1
//  1 - 3 - 3 - 1
//    a
//    1,2,1,3,1,5,1  --  12,1,3,1,5,1  --  1,21,3,1,5,1  --  1,2,13,1,5,1  --  1,2,1,3,15,1
//    12,13,1,5,1   --  12,1,3,15,1  --  1,2,13,15,1  --  1,21,3,15,1
//    12,13,15,1
    func solution() -> Int {
//        let arr = Array(self.msg)
//        var mixedChars = 0
//        for index in 0..<arr.count-1 {
//
//                if (Int(String(arr[index]) + String(arr[index+1])) ?? 0) < 27 {
//                    mixedChars += 1
//                }
//
//        }
        var memo = [Int](repeating: -1, count: asqw.count + 1)
        return helper(msg: asqw, length: asqw.count, memo: &memo)
    }
    
    func helper(msg: String, length: Int, memo: inout [Int]) -> Int {
        let arr = Array(msg)
        let currentChar = msg.count - length
        
        if length == 0 { return 1}
        if msg.first == "0" { return 0 }
        
        if memo[safe: length] ?? -1 > -1 {
            return memo[length]
        }
        
        var result = helper(msg: msg, length: length - 1, memo: &memo)
        
//        let doubleCharsToInt =
        if length >= 2 && (Int(String(arr[currentChar]) + String(arr[currentChar+1])) ?? 0) < 27 {
            result += helper(msg: msg, length: length - 2, memo: &memo)
        }
        memo[length] = result
        return result
    }
}
