//
//  Double+Utility.swift
//  Pods
//
//  Created by Daniel Almeida on 17/01/2018.
//

import UIKit

extension Double {
  
  /// This string contains the double value. If the decimal part = 0 it will not be returned.
  /// Examples: 1.75 -> "1.75"
  ///           1.0 -> "1"
  public var clean: String {
    return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
  }
  
}
