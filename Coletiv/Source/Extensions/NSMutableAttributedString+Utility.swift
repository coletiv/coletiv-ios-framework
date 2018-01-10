//
//  NSMutableAttributedString+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 18/05/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import UIKit

public extension NSMutableAttributedString {
  
  //MARK: Vars
  
  /// Range
  public var range: NSRange {
    return (string as NSString).range(of: string)
  }

  //MARK: Property set methods
  
  /// Add the color to the foreground of the mutable string
  ///
  /// - Parameter color: foreground color
  public func add(color: UIColor) {
    addAttributes([NSAttributedStringKey.foregroundColor: color], range: range)
  }
  
  /// Add kerning value the the string
  ///
  /// - Parameter kern: kerning
  public func add(kern: CGFloat) {
    addAttributes([NSAttributedStringKey.kern: kern], range: range)
  }
  
  /// Set the font size and weight
  ///
  /// - Parameters:
  ///   - fontSize: font size
  ///   - weight: font weight
  public func add(fontSize: CGFloat, weight: CGFloat) {
    let font = UIFont.systemFont(ofSize: fontSize, weight: UIFont.Weight(rawValue: weight))
    addAttributes([NSAttributedStringKey.font: font], range: range)
  }
  
  /// Set the color, size and weight for the font
  ///
  /// - Parameters:
  ///   - color: font color
  ///   - fontSize: font size
  ///   - weight: font weight
  public func add(color: UIColor, fontSize: CGFloat, weight: CGFloat) {
    add(color: color)
    add(fontSize: fontSize, weight: weight)
  }
  
  /// Set the color, size, weight and line spacing for the font
  ///
  /// - Parameters:
  ///   - color: font color
  ///   - fontSize: font size
  ///   - weight: font weight
  ///   - lineSpacing: line spacing
  public func add(color: UIColor, fontSize: CGFloat, weight: CGFloat, lineSpacing: CGFloat) {
    add(color: color, fontSize: fontSize, weight: weight)
    
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.lineSpacing = lineSpacing
    
    addAttributes([NSAttributedStringKey.paragraphStyle: paragraphStyle], range: range)
  }
  
  /// Set the font line spacing
  ///
  /// - Parameter lineSpacing: line spacing
  public func add(lineSpacing: CGFloat) {
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.lineSpacing = lineSpacing
    
    addAttributes([NSAttributedStringKey.paragraphStyle: paragraphStyle], range: range)
  }
  
  /// Set the font line height
  ///
  /// - Parameter lineHeight: line height
  public func add(lineHeight: CGFloat) {
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.minimumLineHeight = lineHeight
    paragraphStyle.maximumLineHeight = lineHeight
    
    addAttributes([NSAttributedStringKey.paragraphStyle: paragraphStyle], range: range)
  }
  
  /// Set the strikethroughStyle for the string
  public func addStrikeThrough() {
    addAttributes([NSAttributedStringKey.strikethroughStyle: NSUnderlineStyle.styleSingle.rawValue], range: range)
  }
  
}
