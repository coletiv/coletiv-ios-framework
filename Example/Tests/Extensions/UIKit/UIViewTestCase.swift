//
//  UIViewTestCase.swift
//  Coletiv_Tests
//
//  Created by Daniel Almeida on 10/01/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest

class UIViewTestCase: XCTestCase {
    
  func testShortcuts() {
    
    let view = UIView(color: UIColor.red)
    
    assert(view.backgroundColor == UIColor.red)
    
    view.frame = CGRect(x: 1, y: 2, width: 3, height: 4)
    
    assert(view.size.height == 4)
    assert(view.x == 1)
    assert(view.y == 2)
    assert(view.width == 3)
    assert(view.height == 4)
  }
    
}
