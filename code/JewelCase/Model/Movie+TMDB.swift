//
//  Movie+TMDB.swift
//  JewelCase
//
//  Created by Peter Friese on 29/07/2020.
//

import Foundation
import TMDB

extension Movie {
  init(from movie: TMDBMovie) {
    self.init(title: movie.originalTitle,
              subTitle: movie.overview ?? "",
              description: movie.overview ?? "",
              releaseDate: Date.fromString(dateString: movie.releaseDate ?? "2020-07-28" ) ?? Date(),
              coverImageName: "",
              posterPath: movie.posterPath ?? "https://via.placeholder.com/300x500.png?text=JewelCase",
              rating: movie.rating ?? 0.0)
  }
}
