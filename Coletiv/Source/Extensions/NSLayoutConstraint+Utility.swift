//
//  NSLayoutConstraint+Utility.swift
//  Ketch-up-restaurant
//
//  Created by André Silva on 20/10/2017.
//  Copyright © 2017 Catech. All rights reserved.
//

import UIKit

public extension NSLayoutConstraint {
  
  /// Init with default values
  ///
  /// - Parameters:
  ///   - item: item
  ///   - attribute: attribute
  ///   - relatedBy: relatedBy - .equal by default
  ///   - toItem: toItem
  ///   - multiplier: multiplier - 1.0 by default
  ///   - constant: constant - 0.0 by default
  public convenience init(item: Any, attribute: NSLayoutAttribute,
                   relatedBy: NSLayoutRelation = .equal,
                   toItem: Any?,
                   multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) {
    
    self.init(item: item, attribute: attribute, 
              relatedBy: relatedBy,
              toItem: toItem, attribute: attribute,
              multiplier: multiplier, constant: constant)
  }
  
}
