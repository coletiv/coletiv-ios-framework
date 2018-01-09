//
//  UIViewControllerContextTransitioning+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 01/04/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import UIKit

//TODO - verify usage

extension UIViewControllerContextTransitioning {
  
  var toViewController: UIViewController {
    return viewController(forKey: .to)!
  }
  
  var fromViewController: UIViewController {
    return viewController(forKey: .from)!
  }
  
  var toView: UIView {
    return view(forKey: .to)!
  }
  
  var fromView: UIView {
    return view(forKey: .from)!
  }
  
}
