//
//  UICollectionView+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 09/08/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import UIKit

public extension UICollectionView {
  
  /// Validate if the row exists within the section of **indexPath**
  ///
  /// - Parameter indexPath: index path that contains the section and row
  /// - Returns: **true** if exists
  public func hasRow(forIndexPath indexPath: IndexPath) -> Bool {
    return indexPath.section < self.numberOfSections && indexPath.row < self.numberOfItems(inSection: indexPath.section)
  }
  
}
