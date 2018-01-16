//
//  UITextFieldTestCase.swift
//  Coletiv_Tests
//
//  Created by Daniel Almeida on 12/01/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest

class UITextFieldTestCase: XCTestCase {
    
  func testPlaceHolderColor() {
    
    let textField: UITextField = UITextField()
    
    let placeHolderText = "placeholder_text"
    
    textField.placeholder = placeHolderText
    textField.placeHolderColor = UIColor.green
    
    assert(textField.placeHolderColor == UIColor.green)
    
    let attributes = [NSAttributedStringKey.foregroundColor: UIColor.green]
    assert((textField.attributedPlaceholder?.isEqual(to: NSAttributedString(string: placeHolderText, attributes: attributes)))!)
  }
    
}
