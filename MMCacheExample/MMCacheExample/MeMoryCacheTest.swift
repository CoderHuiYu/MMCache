//
//  MeMoryCacheTest.swift
//  MMCacheExample
//
//  Created by yuhui on 2021/2/6.
//

import UIKit

class MeMoryCacheTest: NSObject {
    private var memCache = PINMemoryCache.shared
    func add() {
        for index in 100..<200 {
            let obj = "\(index)"
            let key = "abc +\(index)"
//            print("start to insert ---> \(index)")
            memCache.setObjectAsync(obj, forKey: key, completion: nil)
        }
        
        for index in 100..<200 {
            let key = "abc +\(index)"
            memCache.object(forKeyAsync: key) { (cache, str, c) in
//                print("end get value \(String(describing: c)) ---> \(index)")
            }
//            print("get value \(memCache.object(forKey: key) ?? "there is no value") ---> \(index)")
        }
    }

    func remove() {
        memCache.removeAllObjects()
    }
}
