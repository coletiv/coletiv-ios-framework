//
//  UITableView+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 03/08/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import UIKit

public extension UITableView {
  
  
  /// Validate if the row for the provided indexPAth exists
  ///
  /// - Parameter indexPath: indexPath to validate
  /// - Returns: true if the row exists
  public func hasRow(forIndexPath indexPath: IndexPath) -> Bool {
    return indexPath.section < self.numberOfSections && indexPath.row < self.numberOfRows(inSection: indexPath.section)
  }
  
  /// Layouts the table view header applying auto-layout constraints
  /// Thanks to: http://www.codeido.com/2018/02/dynamic-uitableview-header-view-height-using-auto-layout/
  func layoutTableHeaderView() {
    
    guard let headerView = tableHeaderView else { return }
    headerView.translatesAutoresizingMaskIntoConstraints = false
    
    let headerWidth = headerView.bounds.size.width;
    let temporaryWidthConstraints = NSLayoutConstraint.constraints(withVisualFormat: "[headerView(width)]",
                                                                   options: NSLayoutConstraint.FormatOptions(rawValue: UInt(0)),
                                                                   metrics: ["width": headerWidth],
                                                                   views: ["headerView": headerView])
    
    headerView.addConstraints(temporaryWidthConstraints)
    
    headerView.setNeedsLayout()
    headerView.layoutIfNeeded()
    
    let headerSize = headerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
    let height = headerSize.height
    var frame = headerView.frame
    
    frame.size.height = height
    headerView.frame = frame
    
    tableHeaderView = headerView
    
    headerView.removeConstraints(temporaryWidthConstraints)
    headerView.translatesAutoresizingMaskIntoConstraints = true
  }
  
}
