//
//  Person.swift
//  MMCacheExample
//
//  Created by yuhui on 2021/2/6.
//

import UIKit

class Person: NSObject {
    @RunWrapper
    public var dog = "jack"
    @RunWrapper
    public var validators: [() -> Void] = []
}
