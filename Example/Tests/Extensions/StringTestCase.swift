//
//  StringTestCase.swift
//  Coletiv_Tests
//
//  Created by Daniel Almeida on 09/01/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest

@testable import Coletiv

class StringTestCase: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testString() {
    
    //localized TODO - find a way to access the localization files
    //assert(("string_test".localized == "test_ok"))
    
    //attributes
    assert("string".attributed is NSAttributedString && "string".attributed.string == "string")
    
    //mutable attributed
    assert("string".mutableAttributed is NSMutableAttributedString && "string".mutableAttributed.string == "string")
  }
    
}
