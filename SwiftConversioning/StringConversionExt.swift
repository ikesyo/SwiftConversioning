//
//  StringConversionExt.swift
//  SwiftConversioning
//
//  Created by Syo Ikeda on 6/13/14.
//  Copyright (c) 2014 Syo Ikeda. All rights reserved.
//

import Foundation

extension String {
    @conversion func __conversion() -> NSDecimalNumber {
        return NSDecimalNumber(string: self)
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
