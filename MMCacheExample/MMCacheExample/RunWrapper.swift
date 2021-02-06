//
//  RunWrapper.swift
//  MMCacheExample
//
//  Created by yuhui on 2021/2/6.
//

import UIKit
@propertyWrapper
class RunWrapper<T> {
    var wrappedValue: T
    init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
    }
}
