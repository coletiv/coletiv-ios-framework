//
//  UIViewControllerContextTransitioning+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 01/04/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import UIKit

//TODO - verify usage

public extension UIViewControllerContextTransitioning {
  
  public var toViewController: UIViewController {
    return viewController(forKey: .to)!
  }
  
  public var fromViewController: UIViewController {
    return viewController(forKey: .from)!
  }
  
  public var toView: UIView {
    return view(forKey: .to)!
  }
  
  public var fromView: UIView {
    return view(forKey: .from)!
  }
  
}
