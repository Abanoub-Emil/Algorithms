//
//  SentenceReconstruction.swift
//  Algorithms
//
//  Created by Abanoub Emil on 14/09/2021.
//

import Foundation

//  This problem was asked by Microsoft.
//
//  Given a dictionary of words and a string made up of those words (no spaces), return the original sentence in a list. If there is more than one possible reconstruction, return any of them. If there is no possible reconstruction, then return null.
//
//  For example, given the set of words 'quick', 'brown', 'the', 'fox', and the string "thequickbrownfox", you should return ['the', 'quick', 'brown', 'fox'].
//
//  Given the set of words 'bed', 'bath', 'bedbath', 'and', 'beyond', and the string "bedbathandbeyond", return either ['bed', 'bath', 'and', 'beyond] or ['bedbath', 'and', 'beyond'].

struct SentenceReconstruction {
    
    let sentence = "wedonthaveanyfurtherexplanationstoyoumotherfuckerduckerhacker"
    let words = ["hacker", "ducker", "fucker", "mother", "you", "to", "explanations", "further", "any", "have", "dont", "we"]
    
    func solution() {
        var result = [String]()
        var mySentence = sentence
        var myWords = words
        var count = 0
        while mySentence != "" {
            for (i, word) in myWords.enumerated() {
                count += 1
                if mySentence.hasPrefix(word) {
                    mySentence.removeFirst(word.count)
                    result.append(word)
                    myWords.remove(at: i)
                    break
                }
            }
        }
        print(count)
        print(result)
    }
    
    
    // MARK: Best Solution
    
    func solution2() {
        var result = [String]()
        var mySentence = sentence

        for word in words {
            if let endIndex = mySentence.range(of: word)?.upperBound {
                mySentence.insert(" ", at: endIndex)
            }
            result = mySentence.components(separatedBy: " ")
            result.removeLast()
        }
        print(result)
    }
}
