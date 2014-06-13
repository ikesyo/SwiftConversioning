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

}
