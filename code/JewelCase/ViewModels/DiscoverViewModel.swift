//
//  DiscoverViewModel.swift
//  JewelCase
//
//  Created by Peter Friese on 28/07/2020.
//

import Foundation
import Combine
import TMDB

class DiscoverViewModel: ObservableObject {
  @Published var movies = [Movie]()
  @Published var tmdbMovies = [TMDBMovie]()
  
  @Published var searchText = ""
  
  private var cancellables = Set<AnyCancellable>()
  
  private var apiKey: String {
    get {
      guard let filePath = Bundle.main.path(forResource: "TMDB-Info", ofType: "plist") else {
        fatalError("Couldn't find file 'TMDB-Info.plist'.")
      }
      let plist = NSDictionary(contentsOfFile: filePath)
      guard let value = plist?.object(forKey: "API_KEY") as? String else {
        fatalError("Couldn't find key 'API_KEY' in 'TMDB-Info.plist'.")
      }
      if (value.starts(with: "_")) {
        fatalError("Register for a TMDB developer account and get an API key at https://developers.themoviedb.org/3/getting-started/introduction.")
      }
      return value
    }
  }
  
  init() {
    TMDB.set(apiKey: apiKey)
    
    $searchText
      .debounce(for: 0.8, scheduler: RunLoop.main)
      .removeDuplicates()
      .sink { value in
        _ = TMDB.Search.movies(query: value) { pagedListResult in
          pagedListResult
            .publisher
            .receive(on: DispatchQueue.main)
            .compactMap { result in
              result.results
            }
            .sink {
              print("Received completion: \($0)")
            } receiveValue: {
//              print("Received valued: \($0)")
              self.tmdbMovies = $0
            }
            .store(in: &self.cancellables)
        }
      }
      .store(in: &cancellables)
  }
}
