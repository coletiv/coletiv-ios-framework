//
//  Float+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 23/08/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import Foundation

extension Float {
  
  
  /// This string contains the float value. If the decimal part = 0 it will not be returned.
  /// Examples: 1,75 -> "1,75"
  ///           1,0 -> "1"
  var clean: String {
    return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
  }
  
}
