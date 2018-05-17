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
  ///
  /// - Parameters:
  ///   - viewController: view conetroller that will be presented
  ///   - animated: true if it will be animated
  ///   - completion: completion handler
  public func presentFromVisible(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
    
    let visibleController = visiblePresentedViewController()
    visibleController.present(viewController, animated: animated, completion: completion)
    
  }
  
  /// This method returns the top most view controller presented
  /// https://stackoverflow.com/questions/15961288/presenting-a-modal-controller-without-knowing-the-current-view-controller
  ///
  /// - Parameter viewController: view controller to start searching
  public func visiblePresentedViewController() -> UIViewController {
    
    var viewController = self
    
    if
      let navigationController = self as? UINavigationController,
      let top =  navigationController.topViewController {
      viewController = top.visiblePresentedViewController()
    }
    else if
      let tabBarController = self as? UITabBarController,
      let selected = tabBarController.selectedViewController {
      viewController = selected.visiblePresentedViewController()
    }
    else if
      let presentedViewController = presentedViewController {
      viewController = presentedViewController.visiblePresentedViewController()
    }
    
    return viewController
  }
  
}
