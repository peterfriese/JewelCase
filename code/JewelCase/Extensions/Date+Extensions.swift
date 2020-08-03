//
//  Date+Extensions.swift
//  JewelCase
//
//  Created by Peter Friese on 28/07/2020.
//

import Foundation

extension Date {
  static func fromString(dateString: String) -> Date? {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    return formatter.date(from: dateString)
  }
  
  func asString() -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy"
    return formatter.string(from: self)
  }
}
