//
//  Movie+Image.swift
//  JewelCase
//
//  Created by Peter Friese on 03/08/2020.
//

import Foundation

extension Movie {
  var imageUrl: URL {
    return URL(string: "https://image.tmdb.org/t/p/w500\(posterPath)")!
  }
}
