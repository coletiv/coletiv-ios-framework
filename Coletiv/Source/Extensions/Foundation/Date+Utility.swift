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
  
  
  /// Calculates the interval between 2 dates
  /// Thanks to: https://stackoverflow.com/questions/40075850/swift-3-find-number-of-calendar-days-between-two-dates/40075983
  /// - Parameters:
  ///   - comp: Calendar component to calculate the difference
  ///   - date: date from the interval will be calculated
  /// - Returns: Difference in Calendar.Component units
  public func interval(ofComponent comp: Calendar.Component, fromDate date: Date) -> Int {
    
    let currentCalendar = Calendar.current
    
    guard let start = currentCalendar.ordinality(of: comp, in: .era, for: date) else { return 0 }
    guard let end = currentCalendar.ordinality(of: comp, in: .era, for: self) else { return 0 }
    
    return end - start
  }
}

