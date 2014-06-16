//
//  ArrayConversionTest.swift
//  SwiftConversioning
//
//  Created by Syo Ikeda on 6/16/14.
//  Copyright (c) 2014 Syo Ikeda. All rights reserved.
//

import XCTest

class ArrayConversionTest: XCTestCase {

    let data = [1, 2, 3, 2, 3]

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testNSSetConversion() {
        let set = NSSet(array: data)
        let setFrom = data as NSSet
        XCTAssert(set == setFrom)
    }

//    func testNSMutableSetConversion() {
//        let set = NSMutableSet(array: data)
//        let setFrom = data as NSMutableSet
//        XCTAssert(set == setFrom)
//    }
//
//    func testNSCountedSetConversion() {
//        let set = NSCountedSet(array: data)
//        let setFrom = data as NSCountedSet
//        XCTAssert(set == setFrom)
//    }

    func testNSOrderedSetConversion() {
        let set = NSOrderedSet(array: data)
        let setFrom = data as NSOrderedSet
        XCTAssert(set == setFrom)
    }

}
