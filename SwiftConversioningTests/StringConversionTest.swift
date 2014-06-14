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

    func testArrayOfStringConversion() {
        let str = "I My Me Mine"
        let array = ["I", "My", "Me", "Mine"]
        let arrayFromString = str as String[]
        XCTAssert(array == arrayFromString)
    }

    func testNSCalendarConversion() {
        let identifier = NSGregorianCalendar
        let calendar = NSCalendar(identifier: identifier)
        let calendarFromString = identifier as NSCalendar

        XCTAssert(calendar != nil && calendarFromString != nil)
        XCTAssert(calendar == calendarFromString)
    }

    func testNSDecimalNumberConversion() {
        let str = "123.456789"
        let decimal = NSDecimalNumber(string: str)
        let decimalFromString = str as NSDecimalNumber
        XCTAssert(decimal == decimalFromString)
    }

    func testNSLocaleConversion() {
        let str = "ja_JP"
        let locale = NSLocale(localeIdentifier: str)
        let localeFromString = str as NSLocale

        XCTAssert(locale != nil && localeFromString != nil)
        XCTAssert(locale == localeFromString)
    }

    func testNSRegularExpressionConversion() {
        let str = "^[abcABC]+$"
        let regex = NSRegularExpression(pattern: str, options: nil, error: nil)
        let regexFromString = str as NSRegularExpression?

        XCTAssert(regex != nil && regexFromString != nil)
        XCTAssert(regex == regexFromString)
    }

    func testNSScannerConversion() {
        let str = "ABCDEF"
        let scanner = NSScanner(string: str)
        let scannerFromString = str as NSScanner
        XCTAssert(scanner.string == scannerFromString.string)
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
