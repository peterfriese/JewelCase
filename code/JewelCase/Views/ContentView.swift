//
//  ContentView.swift
//  JewelCase
//
//  Created by Peter Friese on 28/07/2020.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var movieStore: MovieStore
  
  var body: some View {
    GridView(movies: movieStore.movies)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
