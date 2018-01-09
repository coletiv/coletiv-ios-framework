//
//  UITableView+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 03/08/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import UIKit

extension UITableView {
  
  func hasRow(forIndexPath indexPath: IndexPath) -> Bool {
    return indexPath.section < self.numberOfSections && indexPath.row < self.numberOfRows(inSection: indexPath.section)
  }
  
}
