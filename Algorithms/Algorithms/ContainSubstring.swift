//
//  ContainSubstring.swift
//  Algorithms
//
//  Created by Abanoub Emil on 04/09/2021.
//

import Foundation

//  This problem was asked by Twitter.
//
//  Implement an autocomplete system. That is, given a query string s and a set of all possible query strings, return all strings in the set that have s as a prefix.
//
//  For example, given the query string de and the set of strings [dog, deer, deal], return [deer, deal].

//  Hint: Try preprocessing the dictionary into a more efficient data structure to speed up queries.


struct ContainSubstring {
    let arr = ["dog", "deer", "deal"]
    let substring = "de"
    
    func findIfMatches() -> [String] {
        var acceptedStrings = [String]()
        for str in arr {
            if str.contains("de") {
                acceptedStrings.append(str)
            }
        }
        
        return acceptedStrings
    }
    
    
}
