//
//  UIApplication+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 02/08/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import UIKit

public extension UIApplication {
  
  /// Retuns the top view controller currently displayed, also checks for presented view controllers
  ///
  /// - Returns: top view controller or **nil** if there's no root view controller
  public class func topViewController() -> UIViewController? {
    if var topController = UIApplication.shared.keyWindow?.rootViewController {
      if let presentedViewController = topController.presentedViewController {
        topController = presentedViewController
      }
      return topController
    }
    
    return nil
  }
  
}
