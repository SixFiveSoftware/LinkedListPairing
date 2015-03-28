//
//  LinkedList.swift
//  LinkedList
//
//  Created by BJ on 3/28/15.
//  Copyright (c) 2015 Six Five Software, LLC. All rights reserved.
//

import Foundation

class LinkedList<T> {
    var head: Node<T>
    var tail: Node<T>
    var length: Int
    
    init(_ value: T) {
        head = Node(value)
        tail = head
        length = 1
    }

    func get(index: Int) -> T? {
        return getNode(index)?.value
    }
    
    func add(value: T) {
        let newNode = Node(value)
        tail.next = newNode
        tail = newNode
        length++
    }
    
    private func getNode(index: Int) -> Node<T>? {
        if (index >= length)  { return nil }
        
        var current = head
        for (var i = 0; i < index; i++) { current = current.next }
        return current
    }
    
    func removeLast() -> T? {
        let tailToReturn = tail
        
        if length >= 2 {
            let newTail = getNode(length - 2)
            newTail?.next = newTail
            --length
        } else {
            return nil
        }
        
        return tailToReturn.value
    }
    
    func removeItemAtIndex(index:Int) -> T? {
        let item = getNode(index - 1)
        let removedItem = item?.next
        let next2Item = removedItem?.next
        
        item?.next = next2Item
        --length
        
        return removedItem?.value
    }
    
}