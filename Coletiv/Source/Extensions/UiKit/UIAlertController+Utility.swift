//
//  UIAlertController+Utility.swift
//  Coletiv
//
//  Created by Daniel Almeida on 03/01/2018.
//  Copyright © 2018 Coletiv. All rights reserved.
//

import UIKit

public extension UIAlertController {
  
  typealias UIAlertActionHandler = ((UIAlertAction) -> Swift.Void)
  
  // MARK: - Inits
  
  /// Creates an alert controller with the style .alert with/o an action. The action is only created when the action is not nil.
  ///
  /// - Parameters:
  ///   - title: alert title
  ///   - message: alert message
  ///   - actionTitle: action title, if not provided the alert will be created without the action
  public convenience init(title: String, message: String, actionTitle: String? = nil) {
    self.init(title: title, message: message, preferredStyle: .alert)
    
    if let actionTitle = actionTitle {
      add(actionTitle: actionTitle)
    }
  }
  
  //MARK: - Other
  
  /// Add an action to the alert with the .default style
  ///
  /// - Parameters:
  ///   - actionTitle: title for the action
  ///   - handler: action handler
  public func add(actionTitle: String, handler: ((UIAlertAction) -> Swift.Void)? = nil) {
    let alertAction = UIAlertAction(title: actionTitle, style: UIAlertActionStyle.default, handler: handler)
    addAction(alertAction)
  }
  
}

