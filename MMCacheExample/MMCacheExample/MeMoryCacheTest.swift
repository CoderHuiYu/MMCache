//
//  MeMoryCacheTest.swift
//  MMCacheExample
//
//  Created by yuhui on 2021/2/6.
//

import UIKit

class MeMoryCacheTest: NSObject {
    private var memCache = PINMemoryCache.shared
    func test() {
        for index in 0..<20 {
            let obj = "\(index)"
            let key = "abc +\(index)"
            memCache.setObjectAsync(obj, forKey: key, completion: nil)
        }
    }
}
