//
//  StringConversionTest.swift
//  SwiftConversioning
//
//  Created by Syo Ikeda on 6/13/14.
//  Copyright (c) 2014 Syo Ikeda. All rights reserved.
//

import XCTest
import SwiftConversioning

class StringConversionTest: XCTestCase {

    let google = "http://www.google.com"

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testNSDecimalNumberConversion() {
        let str = "123.456789"
        let decimal = NSDecimalNumber(string: str)
        let decimalFromString = str as NSDecimalNumber
        XCTAssert(decimal == decimalFromString)
    }

    func testNSURLConversion() {
        let URL = NSURL(string: google)
        let URLFromString = google as NSURL
        XCTAssert(URL == URLFromString)
    }

    func testNSURLRequestConversion() {
        let URL = NSURL(string: google)
        let req = NSURLRequest(URL: URL)
        let reqFromString = google as NSURLRequest
        XCTAssert(req == reqFromString)
    }

    func testNSUUIDConversion() {
        let str = "A26D8246-1ADA-4D96-A782-6C6EAD4AEA0C"
        let UUID = NSUUID(UUIDString: str)
        let UUIDFromString = str as NSUUID
        XCTAssert(UUID == UUIDFromString)
    }

}
