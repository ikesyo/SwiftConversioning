//
//  StringConversionExt.swift
//  SwiftConversioning
//
//  Created by Syo Ikeda on 6/13/14.
//  Copyright (c) 2014 Syo Ikeda. All rights reserved.
//

import Foundation

extension String {
    @conversion func __conversion() -> Array<String> {
        let nsstr = self as NSString
        return nsstr.componentsSeparatedByString(" ") as Array<String>
    }

    @conversion func __conversion() -> NSDecimalNumber {
        return NSDecimalNumber(string: self)
    }

    @conversion func __conversion() -> NSRegularExpression? {
        var error: NSError?
        let regex = NSRegularExpression(pattern: self, options: nil, error: &error)
        if error {
            return nil
        } else {
            return regex
        }
    }

    @conversion func __conversion() -> NSScanner {
        return NSScanner(string: self)
    }

    @conversion func __conversion() -> NSURL {
        return NSURL(string: self)
    }

    @conversion func __conversion() -> NSURLRequest {
        return NSURLRequest(URL: self)
    }

    @conversion func __conversion() -> NSUUID {
        return NSUUID(UUIDString: self)
    }
}
