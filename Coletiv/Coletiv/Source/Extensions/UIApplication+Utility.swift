//
//  UIApplication+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 02/08/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import UIKit

extension UIApplication {
  
  class func topViewController() -> UIViewController? {
    if var topController = UIApplication.shared.keyWindow?.rootViewController {
      while let presentedViewController = topController.presentedViewController {
        topController = presentedViewController
      }
      return topController
    }
    
    return nil
  }
  
}
