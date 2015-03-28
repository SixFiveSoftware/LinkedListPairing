//
//  Node.swift
//  LinkedList
//
//  Created by BJ on 3/28/15.
//  Copyright (c) 2015 Six Five Software, LLC. All rights reserved.
//

import Foundation

class Node<T> {
    var value: T
    var next: Node!
    
    init(_ value: T) {
        self.value = value
        self.next = self
    }
    
}