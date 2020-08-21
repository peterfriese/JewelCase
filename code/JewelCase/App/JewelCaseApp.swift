//
//  JewelCaseApp.swift
//  JewelCase
//
//  Created by Peter Friese on 28/07/2020.
//

import SwiftUI
import Firebase

@main
struct JewelCaseApp: App {
  @StateObject var movieStore = MovieStore()
  
  init() {
    FirebaseApp.configure()
  }
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(\.imageSource, .remote)
        .environmentObject(movieStore)
    }
  }
}
