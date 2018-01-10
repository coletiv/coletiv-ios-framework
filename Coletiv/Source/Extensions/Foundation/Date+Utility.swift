//
//  Date+Utility.swift
//  Ketch-up
//
//  Created by André Silva on 25/08/2017.
//  Copyright © 2017 Catech Labs. All rights reserved.
//

import Foundation

public extension Date {
  
  /// Returns the amount of minutes from another date.
  ///
  /// - Parameter date: starting date
  /// - Returns: duration in minutes
  public func minutes(from date: Date) -> Int {
    return Calendar.current.dateComponents([.minute],
                                           from: date,
                                           to: self).minute ?? 0
  }
}
