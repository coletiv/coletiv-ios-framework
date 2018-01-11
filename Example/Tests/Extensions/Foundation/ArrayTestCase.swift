//
//  ArrayTestCase.swift
//  Coletiv_Tests
//
//  Created by Daniel Almeida on 09/01/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest

@testable import Coletiv

class ArrayTestCase: XCTestCase {
    
  func testArray() {
    
    let a: [Int] = [1, 2, 3, 4, 5]
    let b: [Int] = [1, 3, 2, 5, 4]
    let c: [Int] = [1, 2, 1, 2, 1]
    
    //test comparation
    assert(a.same(as: b))
    assert(!a.same(as: c))
    
    //test subscript
    assert(a[safe: 1] == 2)
    assert(a[safe: 10] == nil)
  }
}
