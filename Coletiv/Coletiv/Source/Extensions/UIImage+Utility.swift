//
//  UIImage+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 30/05/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import UIKit

extension UIImage {
  
  //MARK: - Resize image methods
  
  /// Resize the the image
  ///
  /// - Parameter size: new image size
  /// - Returns: resized image
  func resize(toSize size: CGSize) -> UIImage? {
    UIGraphicsBeginImageContextWithOptions(size, false, scale)
    defer { UIGraphicsEndImageContext() }
    draw(in: CGRect(origin: .zero, size: size))
    return UIGraphicsGetImageFromCurrentImageContext()
  }
  
  
  /// Return an image resized proportionally (width and height) based on its width
  ///
  /// - Parameter width: new width
  /// - Returns: resized image
  func resize(toWidth width: CGFloat) -> UIImage? {
    let height = CGFloat(ceil(width/size.width * size.height))
    return resize(toSize: CGSize(width: width, height: height))
  }
  
  /// Return an image resized proportionally (width and height) based on its height
  ///
  /// - Parameter height: new height
  /// - Returns: resized image
  func resize(toHeight height: CGFloat) -> UIImage? {
    let width = CGFloat(ceil(height/size.height * size.width))
    return resize(toSize: CGSize(width: width, height: height))
  }
  
}

