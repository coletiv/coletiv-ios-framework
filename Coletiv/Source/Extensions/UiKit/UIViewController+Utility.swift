//
//  UIViewController+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 24/11/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import UIKit

public extension UIViewController {
  
  /// This method presents the view controller from the visible top most view controller
  /// https://stackoverflow.com/questions/15961288/presenting-a-modal-controller-without-knowing-the-current-view-controller
  ///
  /// - Parameters:
  ///   - viewController: view conetroller that will be presented
  ///   - animated: true if it will be animated
  ///   - completion: completion handler
  public func presentFromVisible(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
    
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
  
  /// This method returns the top most view controller presented
  ///
  /// - Parameter viewController: view controller to start searching
  public func visiblePresentedViewController() -> UIViewController {
    
    guard
      let viewController = presentedViewController
      else { return self }
    
    return viewController.visiblePresentedViewController()
  }
  
}

