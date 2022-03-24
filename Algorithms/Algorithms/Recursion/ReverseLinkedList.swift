//
//  ReverseLinkedList.swift
//  Algorithms
//
//  Created by Abanoub Emil on 31/01/2022.
//

import Foundation

class Node {
    var value: Int?
    var next: Node?
    
    init(_ value: Int) {
        self.value = value
    }
}

class LinkedList {
    
    var head: Node?
    
    func add(_ node: Node) {
        if head == nil {
            head = node
        } else {
            node.next = head
            head = node
        }
    }
    
    func removeFirst() {
        if head == nil { return }
        head = head?.next
    }
    
    func removeLast() {
        if head == nil { return }
        if head?.next == nil {
            head = nil
            return
        }
        var previousNode = head
        var currentNode = head?.next
        while currentNode?.next != nil {
            currentNode = currentNode?.next
            previousNode = previousNode?.next
        }
        previousNode?.next = nil
        currentNode = nil
    }
}

class ReverseLinkedList {
    
    var ls1 = LinkedList()
    
    init() {
        ls1.add(Node(4))
        ls1.add(Node(5))
        ls1.add(Node(2))
        ls1.add(Node(3))
        ls1.add(Node(2))
        ls1.add(Node(1))
        ls1.add(Node(20))
        ls1.add(Node(10))
        ls1.add(Node(2))
        ls1.add(Node(1))
    }
    
    
    
    func printLs1() {
        var tempHead = ls1.head
        while tempHead != nil {
            print(tempHead?.value ?? 0)
            tempHead = tempHead?.next
        }
    }
    
    func reverse(node: Node?, next: Node?) {
        guard let reversedNode = node else {
            ls1.head = next
            return
        }
        
        let tempNode = reversedNode.next
        reversedNode.next = next
        reverse(node: tempNode, next: reversedNode)
        
    }
    
}
