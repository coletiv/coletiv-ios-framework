//
//  String+Utility.swift
//  Coletiv
//
//  Created by Daniel Almeida on 03/01/2018.
//

//ONLY FOR TEST

import Foundation

extension String {
  
  var localized: String {
    return NSLocalizedString(self, comment: "")
  }
  
  var attributed: NSAttributedString {
    return NSAttributedString(string: self)
  }
  
  var mutableAttributed: NSMutableAttributedString {
    return NSMutableAttributedString(string: self)
  }
  
}

