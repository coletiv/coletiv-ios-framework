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
  
  func testString() {
    
    //localized TODO - find a way to access the localized files
    //assert(("string_test".localized == "test_ok"))
    
    //attributed
    assert("string".attributed is NSAttributedString && "string".attributed.string == "string")
    
    //mutable attributed
    assert("string".mutableAttributed is NSMutableAttributedString && "string".mutableAttributed.string == "string")
  }
    
}
