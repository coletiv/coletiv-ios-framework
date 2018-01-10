//
//  String+Utility.swift
//  Coletiv
//
//  Created by Daniel Almeida on 03/01/2018.
//

import Foundation

public extension String {
  
  /// Localized string
  public var localized: String {
    return NSLocalizedString(self, comment: "")
  }
  
  /// Attributed string
  public var attributed: NSAttributedString {
    return NSAttributedString(string: self)
  }
  
  /// Mutable attributed string
  public var mutableAttributed: NSMutableAttributedString {
    return NSMutableAttributedString(string: self)
  }
  
}

