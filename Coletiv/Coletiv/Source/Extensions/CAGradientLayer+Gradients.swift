//
//  CAGradientLayer+Gradients.swift
//  Ketch-up
//
//  Created by André Silva on 03/04/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import UIKit

extension CAGradientLayer {
  
  
  /// Returns a gradient for the colors/points provided
  ///
  /// - Parameters:
  ///   - bounds: bounds for the gradient
  ///   - startingColor: starting color
  ///   - endColor: end color
  ///   - startingPoint: starting point
  ///   - endPoint: end point
  /// - Returns: gradient layer
  class func gradient(for bounds: CGRect,
                      startingColor: UIColor, endColor: UIColor,
                      startingPoint: CGPoint, endPoint: CGPoint) -> CAGradientLayer {
    
    let gradient = CAGradientLayer()
    
    gradient.frame = bounds
    
    gradient.startPoint = startingPoint
    gradient.endPoint = endPoint
    
    gradient.colors = [startingColor.cgColor,
                       endColor.cgColor]
    
    return gradient
  }
  
}
