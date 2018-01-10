//
//  UIView+Utility.swift
//  Coletiv
//
//  Created by Daniel Almeida on 03/01/2018.
//

import UIKit

public extension UIView {
  
  //MARK: - Inits
  
  public convenience init(color: UIColor) {
    self.init()
    backgroundColor = color
  }
  
  // MARK: - Frame shortcuts
  
  /// Origin's x position
  public var x: CGFloat {
    return frame.origin.x
  }
  
  /// Origin's y position
  public var y: CGFloat {
    return frame.origin.y
  }
  
  /// Framw size
  public var size: CGSize {
    return frame.size
  }
  
  /// Frame width
  public var width: CGFloat {
    return frame.width
  }
  
  /// Frame height
  public var height: CGFloat {
    return frame.height
  }
  
  // MARK: - Animations
  
  public typealias Animations = () -> ()
  
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
  public class func springAnimation(withVelocity velocity: CGFloat = 0, animations: @escaping Animations) {
    let initial = initialVelocity(from: velocity)
    
    UIView.animate(withDuration: 0.3, delay: 0.0,
                   usingSpringWithDamping: 0.9, initialSpringVelocity: initial,
                   options: .curveEaseInOut, animations: animations)
  }
  
}

