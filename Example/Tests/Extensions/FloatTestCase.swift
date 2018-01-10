//
//  FloatTestCase.swift
//  Coletiv_Tests
//
//  Created by Daniel Almeida on 09/01/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest

@testable import Coletiv

class FloatTestCase: XCTestCase {
    
  func testFloat() {
    
    let number1:Float = 0.0
    let number2:Float = 0.234
    let number3:Float = 1.1
    let number4:Float = 1.00
    
    assert(number1.clean == "0")
    assert(number2.clean == "0.234")
    assert(number3.clean == "1.1")
    assert(number4.clean == "1")
    
  }
    
}
