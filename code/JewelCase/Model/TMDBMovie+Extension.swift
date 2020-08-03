//
//  TMDBMovie+Extension.swift
//  JewelCase
//
//  Created by Peter Friese on 28/07/2020.
//

import Foundation
import TMDB

extension TMDBMovie: Identifiable {
  var imageUrl: URL {
    guard let posterPath = posterPath else {
      return URL(string: "https://via.placeholder.com/300x500.png?text=JewelCase")!
    }
    return URL(string:"https://image.tmdb.org/t/p/w92\(posterPath)")!
  }
  
  var year: String {
    guard let fullDate = Date.fromString(dateString: releaseDate ?? "") else {
      return "unknown"
    }
    return fullDate.asString()
  }
}
