//
//  LinkedListTests.swift
//  LinkedListTests
//
//  Created by BJ on 3/28/15.
//  Copyright (c) 2015 Six Five Software, LLC. All rights reserved.
//

import UIKit
import XCTest

class LinkedListTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCanCreateLinkedListWithValue() {
        var list = LinkedList<Int>(100)
        XCTAssertEqual(list.get(0)!, 100, "Our first value should be 100")
    }
    
    func testCanAddValue() {
        var list = LinkedList<Int>(100)
        list.add(50)
        XCTAssertEqual(list.length, 2, "Our list should have two elements")
    }
    
    func testLLCanHaveThreeValues() {
        let list = LinkedList(100)
        list.add(50)
        list.add(75)
        XCTAssertEqual(list.length, 3, "our list should have three elements")
    }
    
    func testValueOfThirdElement() {
        let list = LinkedList(10)
        list.add(20)
        list.add(30)
        XCTAssertEqual(list.get(2)!, 30, "the value of our third element should be 30")
    }
    
    func testOutOfBoundsReturnsNil() {
        let list = LinkedList(10)
        XCTAssertNil(list.get(4), "Out of bounds index is NOT OKAY!")
    }
    
    func testRemoveTail() {
        let list = LinkedList(1)
        list.add(3)
        list.add(16)
        let removed = list.removeLast()
        XCTAssertEqual(removed!, 16, "We should have removed 16")
        XCTAssertEqual(list.length, 2, "List should have two elements, Yo!")
    }
    
    func testRemovingLastFromListWithOneElementReturnsNil() {
        let list = LinkedList(10)
        XCTAssertNil(list.removeLast(), "removeLast should return nil on a single item list")
    }
    
    func testRemovingItemAtIndex2ReturnsAValueAndShortensList() {
        let list = LinkedList(10)
        list.add(20)
        list.add(30)
        list.add(40)
        
        XCTAssertEqual(list.removeItemAtIndex(2)!, 30, "third item should equal 30")
        XCTAssertEqual(list.length, 3, "list length should equal 3")
    }
}
