//
//  DateTestCase.swift
//  Coletiv_Tests
//
//  Created by Daniel Almeida on 09/01/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest

@testable import Coletiv

class DateTestCase: XCTestCase {
    
  func testDate() {
    
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy/MM/dd HH:mm"
    
    guard
      let startDate = formatter.date(from: "2018/01/02 10:00"),
      let dateAfter1Minute = formatter.date(from: "2018/01/02 10:01"),
      let dateAfter120Minute = formatter.date(from: "2018/01/02 12:00"),
      let dateBefore60Minutes = formatter.date(from: "2018/01/02 09:00")
    else {
      assert(false)
      return
    }
    
    assert(dateAfter1Minute.minutes(from: startDate) == 1)
    assert(dateAfter120Minute.minutes(from: startDate) == 120)
    assert(dateBefore60Minutes.minutes(from: startDate) == -60)
    assert(startDate.minutes(from: startDate) == 0)
  }
    
}
