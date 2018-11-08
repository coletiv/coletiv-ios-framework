//
//  UITextField+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 25/05/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import UIKit

public extension UITextField {
  
  /// Defines the place holder color within the interface
  @IBInspectable var placeHolderColor: UIColor? {
    get {
      guard let attributedPlaceholder = attributedPlaceholder else { return nil }
      
      let attributeKey = NSAttributedString.Key.foregroundColor
      var range = NSRange(location: 0, length: attributedPlaceholder.length)
      
      let attribute = attributedPlaceholder.attribute(attributeKey, at: 0, effectiveRange: &range)
      return attribute as? UIColor
    }
    set {
      let attributes = [NSAttributedString.Key.foregroundColor: newValue ?? .clear]
      attributedPlaceholder = NSAttributedString(string: placeholder ?? "", attributes: attributes)
    }
  }
  
}
