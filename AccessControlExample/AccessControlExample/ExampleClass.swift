//
//  ExampleClass.swift
//  AccessControlExample
//
//  Created by RTC-HN360 on 1/20/19.
//  Copyright © 2019 RTC-HN360. All rights reserved.
//

import UIKit

open class someOpenClass {
    public var somePublicProperty = 0
    var someInternalProperty = 1
    fileprivate func someMethodFilePrivate() {}
    private func someMethodPrivate() {}
}

public class somePublicClass {
    public var somePublicProperty = 0
    var someInternalProperty = 1
    fileprivate func someMethodFilePrivate() {}
    private func someMethodPrivate() {}
}

class someInternalClass {
    public var somePublicProperty = 0
    var someInternalProperty = 1
    fileprivate func someMethodFilePrivate() {
        print(somePublicProperty)
    }
    private func someMethodPrivate() {
        print(someInternalProperty)
    }
}

fileprivate class someFilePrivateClass {
    public var somePublicProperty = 0
    var someInternalProperty = 1
    fileprivate func someMethodFilePrivate() {}
    private func someMethodPrivate() {}
}

private class somePrivateClass {
    public var somePublicProperty = 0
    var someInternalProperty = 1
    fileprivate func someMethodFilePrivate() {}
    private func someMethodPrivate() {}
}

extension someInternalClass {
    func test() {
        someMethodFilePrivate()
        someMethodPrivate()
    }
}

extension someFilePrivateClass {
    func testFilePrivate() {
        someMethodPrivate()
        someMethodFilePrivate()
    }
}

extension somePrivateClass {
    func testPrivate() {
        someMethodPrivate()
        someMethodFilePrivate()
    }
}

class ExampleClass: NSObject {
    
}
