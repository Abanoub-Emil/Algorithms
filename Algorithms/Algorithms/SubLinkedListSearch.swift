//
//  SubLinkedListSearch.swift
//  Algorithms
//
//  Created by Abanoub Emil on 31/01/2022.
//

import Foundation

// Find if one linked list is sublist from the another linked list

class SubLinkedListSearch {
    let ls1 = LinkedList()
    let ls2 = LinkedList()
    
    init() {
        ls1.add(Node(4))
        ls1.add(Node(5))
        ls1.add(Node(2))
        ls1.add(Node(3))
        ls1.add(Node(2))
        ls1.add(Node(1))
        ls1.add(Node(2))
        ls1.add(Node(1))
        ls1.add(Node(20))
        ls1.add(Node(10))
        ls1.add(Node(2))
        ls1.add(Node(1))
        
        ls2.add(Node(3))
        ls2.add(Node(2))
        ls2.add(Node(1))
    }
    
    func solution() {
        var current1: Node? = ls1.head
        var current2: Node? = ls2.head
        
        var length1 = 0
        var length2 = 0
        
        while current1 != nil {
            length1 += 1
            current1 = current1?.next
        }
        
        while current2 != nil {
            length2 += 1
            current2 = current2?.next
        }
        
        if length1 > length2 {
            checkIfSubList(biggerArr: ls1, smallArr: ls2)
        } else {
            checkIfSubList(biggerArr: ls2, smallArr: ls1)
        }
    }
    
    func checkIfSubList(biggerArr: LinkedList, smallArr: LinkedList) {
        var currentSmall: Node? = smallArr.head
        var currentBig: Node? = biggerArr.head
        var isSubList = false
        
        while currentSmall != nil && currentBig != nil {
            print("\(currentBig?.value) \(currentSmall?.value)")
            if currentSmall?.value == currentBig?.value {
                isSubList = true
                currentSmall = currentSmall?.next
                currentBig = currentBig?.next
            } else {
                isSubList = false
                currentSmall = smallArr.head
                if currentSmall?.value != currentBig?.value {
                    currentBig = currentBig?.next
                }
            }
        }
        
        print(isSubList)
    }
}

