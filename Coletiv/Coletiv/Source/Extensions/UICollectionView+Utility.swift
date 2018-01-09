//
//  UICollectionView+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 09/08/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import UIKit

extension UICollectionView {
  
  func hasRow(forIndexPath indexPath: IndexPath) -> Bool {
    return indexPath.section < self.numberOfSections && indexPath.row < self.numberOfItems(inSection: indexPath.section)
  }
  
}
