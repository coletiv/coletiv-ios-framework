//
//  NSMutableAttributedString+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 18/05/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import UIKit

extension NSMutableAttributedString {
  
  var range: NSRange {
    return (string as NSString).range(of: string)
  }

  func add(color: UIColor) {
    addAttributes([NSAttributedStringKey.foregroundColor: color], range: range)
  }
  
  func add(kern: CGFloat) {
    addAttributes([NSAttributedStringKey.kern: kern], range: range)
  }
  
  func add(fontSize: CGFloat, weight: CGFloat) {
    let font = UIFont.systemFont(ofSize: fontSize, weight: UIFont.Weight(rawValue: weight))
    addAttributes([NSAttributedStringKey.font: font], range: range)
  }
  
  func add(color: UIColor, fontSize: CGFloat, weight: CGFloat) {
    add(color: color)
    add(fontSize: fontSize, weight: weight)
  }
  
  func add(color: UIColor, fontSize: CGFloat, weight: CGFloat, lineSpacing: CGFloat) {
    add(color: color, fontSize: fontSize, weight: weight)
    
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.lineSpacing = lineSpacing
    
    addAttributes([NSAttributedStringKey.paragraphStyle: paragraphStyle], range: range)
  }
  
  func add(lineSpacing: CGFloat) {
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.lineSpacing = lineSpacing
    
    addAttributes([NSAttributedStringKey.paragraphStyle: paragraphStyle], range: range)
  }
  
  func add(lineHeight: CGFloat) {
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.minimumLineHeight = lineHeight
    paragraphStyle.maximumLineHeight = lineHeight
    
    addAttributes([NSAttributedStringKey.paragraphStyle: paragraphStyle], range: range)
  }
  
  func addStrikeThrough() {
    addAttributes([NSAttributedStringKey.strikethroughStyle: NSUnderlineStyle.styleSingle.rawValue], range: range)
  }
  
}
