//
//  Float+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 23/08/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import Foundation

extension Float {
  
  var clean: String {
    return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
  }
  
}
