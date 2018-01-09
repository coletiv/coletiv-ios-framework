//
//  UIViewController+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 24/11/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import UIKit

extension UIViewController {
  
  // This method presents the view controller from the visible top most view controller
  // https://stackoverflow.com/questions/15961288/presenting-a-modal-controller-without-knowing-the-current-view-controller
  // (slightly modified)
  func presentFromVisible(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
    if let navigationController = self as? UINavigationController {
      navigationController.topViewController?.presentFromVisible(viewController, animated: animated, completion: completion)
    } else if let tabBarController = self as? UITabBarController {
      tabBarController.selectedViewController?.presentFromVisible(viewController, animated: animated, completion: completion)
    } else if let presentedViewController = presentedViewController {
      presentedViewController.presentFromVisible(viewController, animated: animated, completion: completion)
    } else {
      present(viewController, animated: animated, completion: completion)
    }
  }
  
}
