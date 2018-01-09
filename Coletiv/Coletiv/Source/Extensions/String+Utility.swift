//
//  String+Utility.swift
//  Coletiv
//
//  Created by Daniel Almeida on 03/01/2018.
//

import Foundation

extension String {
  
  /// Localized string
  var localized: String {
    return NSLocalizedString(self, comment: "")
  }
  
  /// Attributed string
  var attributed: NSAttributedString {
    return NSAttributedString(string: self)
  }
  
  /// Mutable attributed string
  var mutableAttributed: NSMutableAttributedString {
    return NSMutableAttributedString(string: self)
  }
  
}

