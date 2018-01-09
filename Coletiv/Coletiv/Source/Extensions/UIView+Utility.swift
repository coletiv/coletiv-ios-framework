//
//  UIView+Utility.swift
//  Coletiv
//
//  Created by Daniel Almeida on 03/01/2018.
//

import UIKit

extension UIView {
  
  //MARK: - Inits
  
  convenience init(color: UIColor) {
    self.init()
    backgroundColor = color
  }
  
  // MARK: - Frame shortcuts
  
  /// Origin's x position
  var x: CGFloat {
    return frame.origin.x
  }
  
  /// Origin's y position
  var y: CGFloat {
    return frame.origin.y
  }
  
  /// Framw size
  var size: CGSize {
    return frame.size
  }
  
  /// Frame width
  var width: CGFloat {
    return frame.width
  }
  
  /// Frame height
  var height: CGFloat {
    return frame.height
  }
  
  // MARK: - Animations
  
  typealias Animations = () -> ()
  
  /// The velocity needs to be adjusted between a min and max value in order to smooth the interaction
  ///
  /// - Parameter velocity: velocity to adjust
  private class func initialVelocity(from velocity: CGFloat) -> CGFloat {
    let min: CGFloat = 110
    let max: CGFloat = 8500
    return (min * velocity) / max
  }
  
  /// A default Spring Animation with given velocity and given animations
  ///
  /// - Parameters:
  ///   - velocity: velocity
  ///   - animations: animations that will be performed
  class func springAnimation(withVelocity velocity: CGFloat = 0, animations: @escaping Animations) {
    let initial = initialVelocity(from: velocity)
    
    UIView.animate(withDuration: 0.3, delay: 0.0,
                   usingSpringWithDamping: 0.9, initialSpringVelocity: initial,
                   options: .curveEaseInOut, animations: animations)
  }
  
}

