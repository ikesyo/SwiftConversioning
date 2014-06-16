//
//  ArrayConversionExt.swift
//  SwiftConversioning
//
//  Created by Syo Ikeda on 6/16/14.
//  Copyright (c) 2014 Syo Ikeda. All rights reserved.
//

import Foundation

extension Array {
    var _toNSArray: NSArray { return self as NSArray }

    // MARK: - NSSet conversion

    @conversion func __conversion() -> NSSet {
        return NSSet(array: self._toNSArray)
    }

    // Commented out because it seems that the most descending subclass is
    // picked up for a conversion to the root class.

//    @conversion func __conversion() -> NSMutableSet {
//        return NSMutableSet(array: self._toNSArray)
//    }
//
//    @conversion func __conversion() -> NSCountedSet {
//        return NSCountedSet(array: self._toNSArray)
//    }

    @conversion func __conversion() -> NSOrderedSet {
        return NSOrderedSet(array: self._toNSArray)
    }
}

extension NSArray {
    @conversion func __conversion() -> NSSet {
        return NSSet(array: self)
    }

//    @conversion func __conversion() -> NSMutableSet {
//        return NSMutableSet(array: self)
//    }
//
//    @conversion func __conversion() -> NSCountedSet {
//        return NSCountedSet(array: self)
//    }

    @conversion func __conversion() -> NSOrderedSet {
        return NSOrderedSet(array: self)
    }
}
