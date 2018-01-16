//
//  NibIdentifier.swift
//  Pods
//
//  Created by Daniel Almeida on 16/01/2018.
//

import UIKit

// Protocol to simplify the identification/initialization for the UIKit components
public protocol NibIdentifier {
  
  // Nib
  static var nib:UINib { get }
  
  // Identifier
  static var identifier: String { get }
}

// Default initializations
public extension NibIdentifier {
  
  static var nib:UINib {
    return UINib(nibName: identifier, bundle: nil)
  }

  static var identifier: String {
    return String(describing: self)
  }
}

