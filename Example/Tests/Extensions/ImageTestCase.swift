//
//  ImageTestCase.swift
//  Coletiv_Tests
//
//  Created by Daniel Almeida on 09/01/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest 

class ImageTestCase: XCTestCase {
  
  func testImageResize() {
  
    //32 x 32 image
    if let image = self.image(named: "apple-logo") {
    
      guard
        let imageResized16 = image.resize(toWidth: 16),
        let imageResized5 = image.resize(toHeight: 5),
        let imageResized6 = image.resize(toSize: CGSize(width: 10, height: 12))
        else { assert(false) }
      
      assert(imageResized16.size.height == 16)
      assert(imageResized5.size.height == 5)
      assert(imageResized6.size.width == 10 && imageResized6.size.height == 12)
    } else {
      assert(false)
    }
  }
    
  func image(named: String) -> UIImage? {
    return UIImage(named: named, in: Bundle(for: type(of: self)), compatibleWith: nil)
  }
  
}
