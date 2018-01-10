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
  @IBInspectable var placeHolderColor: UIColor {
    get {
      return self.placeHolderColor
    }
    set {
      attributedPlaceholder = NSAttributedString(string: placeholder ?? "",
                                                 attributes:[NSAttributedStringKey.foregroundColor: newValue])
    }
  }
  
}
