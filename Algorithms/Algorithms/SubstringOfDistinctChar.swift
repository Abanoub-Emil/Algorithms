//
//  SubstringOfDistinctChar.swift
//  Algorithms
//
//  Created by Abanoub Emil on 04/09/2021.
//

import Foundation

//  This problem was asked by Amazon.
//
//  Given an integer k and a string s, find the length of the longest substring that contains at most k distinct characters.
//
//  For example, given s = "abcba" and k = 2, the longest substring with k distinct characters is "bcb".

struct SubstringOfDistinctChar {
    let str = "abcbasjjfdsfiruqeijsadklksfnmmmmmmmm"
    let k = 2
    
    func solution() -> String {
        var longestString = ""
        
        for (index, mainChar) in str.enumerated() {
            var string = ""
            string.append(mainChar)
            var numOfNonDuplicate = 1
            let newStr = String(str.suffix(str.count - index - 1))
            for subChar in newStr {
                if string.contains(subChar) {
                    string.append(subChar)
                } else if numOfNonDuplicate < k  {
                    string.append(subChar)
                    numOfNonDuplicate += 1
                } else {
                    break
                }
            }
            if string.count > longestString.count {
                longestString = string
            }
        }
        return longestString
    }
}
