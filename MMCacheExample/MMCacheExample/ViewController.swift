//
//  ViewController.swift
//  MMCacheExample
//
//  Created by yuhui on 2021/2/3.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         MeMoryCacheTest().test()
        
//        OperationQueue
//        DispatchGroup
//
        let p = Person()
        print(p.dog)
        print(p.validators)
        // Do any additional setup after loading the view.
        
        // Given
        let initialValue = "jeffery"
        let protected = Protected<String>(initialValue)
        protected.write { (str) -> String in
            print("str = \(str)")
            return  "\(str) + hello"
        }
//
//        let a = protected.read { (str) -> String in
//            print("str = \(str)")
//            return "\(str) + hello"
//        }
//
//        print(a)
//
//       ////
        
        let s = SomeStruct()
        print(s.x)  // Int value
        print(s.$x )   // SomeProjection value
        print(s.$x.wrapper) // WrapperWithProjection value
        
    }

}

//@propertyWrapper
//struct SomeWrapper {
//    var wrappedValue: Int
//    var someValue: Double
//    init() {
//        self.wrappedValue = 100
//        self.someValue = 12.3
//    }
//    init(wrappedValue: Int) {
//        self.wrappedValue = wrappedValue
//        self.someValue = 45.6
//    }
//    init(wrappedValue value: Int, custom: Double) {
//        self.wrappedValue = value
//        self.someValue = custom
//    }
//}
//
//struct SomeStruct {
//    // 使用 init()
//    @SomeWrapper var a: Int
//
//    // 使用 init(wrappedValue:)
//    @SomeWrapper var b = 10
//
//    // 两个都是使用 init(wrappedValue:custom:)
//    @SomeWrapper(custom: 98.7) var c = 30
//    @SomeWrapper(wrappedValue: 30, custom: 98.7) var d
//
//}

@propertyWrapper
struct WrapperWithProjection {
    var wrappedValue: Int
    var projectedValue: SomeProjection {
        return SomeProjection(wrapper: self)
    }
}
struct SomeProjection {
    var wrapper: WrapperWithProjection
}

struct SomeStruct {
    @WrapperWithProjection var x = 123
}
