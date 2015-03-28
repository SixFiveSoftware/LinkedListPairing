//
//  NodeTests.swift
//  LinkedList
//
//  Created by BJ on 3/28/15.
//  Copyright (c) 2015 Six Five Software, LLC. All rights reserved.
//

import UIKit
import XCTest

class NodeTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCreateANode() {
        let node = Node<Int>(5)
        XCTAssertNotNil(node, "Our node object should not be nil")
    }
    
    func testIntegerNodeValueIsEqualTo69() {
        let node = Node<Int>(69)
        XCTAssertEqual(node.value, 69, "node's value should be 69")
    }
    
    func testNextVariable() {
        let node = Node<Int>(10)
        XCTAssertTrue(node === node.next, "node's next variable wasn't initialized or doesn't exist")
    }
    
    func testCanSetNext() {
        let node = Node<Int>(10)
        let childNode = Node<Int>(11)
        node.next = childNode
        XCTAssertTrue(node.next === childNode, "We should be able to set the next pointer")
    }

}
