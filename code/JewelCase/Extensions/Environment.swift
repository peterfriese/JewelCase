//
//  Environment.swift
//  JewelCase
//
//  Created by Peter Friese on 29/07/2020.
//

import SwiftUI

enum ImageSource {
  case local
  case remote
}

struct ImageSourceEnvironmentKey: EnvironmentKey {
  static let defaultValue: ImageSource = .local
}

extension EnvironmentValues {
  var imageSource: ImageSource {
    get {
      return self[ImageSourceEnvironmentKey]
    }
    set {
      self[ImageSourceEnvironmentKey] = newValue
    }
  }
}
