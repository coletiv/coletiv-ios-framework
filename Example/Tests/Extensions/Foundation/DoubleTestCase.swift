//
//  DoubleTestCase.swift
//  Coletiv_Tests
//
//  Created by Daniel Almeida on 17/01/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest

@testable import Coletiv

class DoubleTestCase: XCTestCase {
  
  func testDouble() {
    
    let number1: Double = 0.0
    let number2: Double = 0.234
    let number3: Double = 1.1
    let number4: Double = 1.00
    
    assert(number1.clean == "0")
    assert(number2.clean == "0.234")
    assert(number3.clean == "1.1")
    assert(number4.clean == "1")
  }
  
}
