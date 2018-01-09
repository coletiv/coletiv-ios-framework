//
//  UIView+Utility.swift
//  Coletiv
//
//  Created by Daniel Almeida on 03/01/2018.
//

import UIKit

extension UIView {
  
  convenience init(color: UIColor) {
    self.init()
    backgroundColor = color
  }
  
  // MARK: - frame
  
  var x: CGFloat {
    return frame.origin.x
  }
  var y: CGFloat {
    return frame.origin.y
  }
  
  var size: CGSize {
    return frame.size
  }
  var width: CGFloat {
    return frame.width
  }
  var height: CGFloat {
    return frame.height
  }
  
  // MARK: - Animation Utility
  
  typealias Animations = () -> ()
  
  // The velocity needs to be adjusted between a min and max value in order to smooth the interaction
  private class func initialVelocity(from velocity: CGFloat) -> CGFloat {
    let min: CGFloat = 110
    let max: CGFloat = 8500
    return (min * velocity) / max
  }
  
  // A default Spring Animation with given velocity and given animations
  class func springAnimation(withVelocity velocity: CGFloat = 0, animations: @escaping Animations) {
    let initial = initialVelocity(from: velocity)
    
    UIView.animate(withDuration: 0.3, delay: 0.0,
                   usingSpringWithDamping: 0.9, initialSpringVelocity: initial,
                   options: .curveEaseInOut, animations: animations)
  }
  
}

