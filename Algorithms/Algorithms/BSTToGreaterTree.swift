//
//  BSTToGreaterTree.swift
//  Algorithms
//
//  Created by Abanoub Emil on 03/03/2022.
//

import Foundation

//  Given the root of a Binary Search Tree (BST), convert it to a Greater Tree such that every key of the original BST is changed to the original key plus the sum of all keys greater than the original key in BST.
//
//  As a reminder, a binary search tree is a tree that satisfies these constraints:
//
//  The left subtree of a node contains only nodes with keys less than the node's key.
//  The right subtree of a node contains only nodes with keys greater than the node's key.
//  Both the left and right subtrees must also be binary search trees.
//
//  Input: root = [4,1,6,0,2,5,7,null,null,null,3,null,null,null,8]
//  Output: [30,36,21,36,35,26,15,null,null,null,33,null,null,null,8]
//
//  Input: root = [0,null,1]
//  Output: [1,null,1]

class BSTToGreaterTree {
    
    
    func solution() {
        let root = TreeNode(4, TreeNode(1, TreeNode(0, nil, nil), TreeNode(2, nil, TreeNode(3))),TreeNode(6, TreeNode(5), TreeNode(7, nil, TreeNode(8))))
        bstToGst(root)
    }
    var sum = 0

    func bstToGst(_ root: TreeNode?) -> TreeNode? {
//        TreeNode.printTree(root: root)
        
        recursion(root)
//        leftRecursion(nil, root, true, &lastValue)
        TreeNode.printTree(root: root)
        return root
    }
    
    func recursion(_ root: TreeNode?) {
        if root?.right != nil {
            recursion(root?.right)
        } 
        root?.val += sum
        sum = root?.val ?? 0
        if root?.left != nil {
            recursion(root?.left)
        }
    }
    
}


class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    static var queue = [TreeNode?]()
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
    
    static func printTree(root: TreeNode?) {
        queue.append(root)
        while !queue.isEmpty {
            let node = queue.removeFirst()
            print(node?.val)
            if node == nil { continue }
//            if node?.left != nil {
                queue.append(node?.left)
//            }
//            if node?.right != nil {
                queue.append(node?.right)
//            }
            
        }
    }
}

