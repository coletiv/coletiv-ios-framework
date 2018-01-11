//
//  Array+Utility.swift
//  Ketch-up-restaurant
//
//  Created by André Silva on 13/10/2017.
//  Copyright © 2017 Catech. All rights reserved.
//

// MARK: - Array comparation

//thanks to -> https://stackoverflow.com/questions/36714522/how-do-i-check-in-swift-if-two-arrays-contain-the-same-elements-regardless-of-th
public extension Array where Element: Comparable {
  
  /// Compare two array elements
  ///
  /// - Parameter other: array to compare with
  /// - Returns: true if the arrays are equal
  public func same(as other: [Element]) -> Bool {
    return count == other.count && sorted() == other.sorted()
  }
  
}

// MARK: - Others

public extension Array {
  
  /// Ensure that when accessing an element located at **Index** an out of bounds exception will not be raised
  /// Returns **nil** if no argument
  ///
  /// - Parameter index: array index to safe access
  public subscript (safe index: Index) -> Element? {
    return indices.contains(index) ? self[index] : nil
  }
  
}
