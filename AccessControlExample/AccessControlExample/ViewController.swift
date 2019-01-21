//
//  ViewController.swift
//  AccessControlExample
//
//  Created by RTC-HN360 on 1/20/19.
//  Copyright © 2019 RTC-HN360. All rights reserved.
//

import UIKit

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

class A {
    fileprivate func hey() {
        print("hey")
    }
    
    func hello() {
        print("hello")
    }
}

class B: A {
    override func hello() {
        print("A")
    }
    
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let privateClass = somePrivateClass()
        privateClass.testPrivate()
        
        
    }


}

