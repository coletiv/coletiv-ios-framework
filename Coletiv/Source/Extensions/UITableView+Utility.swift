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
  
}
