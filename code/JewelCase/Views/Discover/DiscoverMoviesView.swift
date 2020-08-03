//
//  DiscoverMoviesView.swift
//  JewelCase
//
//  Created by Peter Friese on 28/07/2020.
//

import SwiftUI
import URLImage
import TMDB

struct DiscoverMoviesView: View {
  @StateObject var viewModel = DiscoverViewModel()
  @Environment(\.presentationMode) var presentationMode
  @EnvironmentObject var movieStore: MovieStore
  
  var body: some View {
    NavigationView {
      VStack {
        SearchBar(text: $viewModel.searchText)
        
        List {
          ForEach(viewModel.tmdbMovies) { item in
            HStack(alignment: .top) {
              URLImage(item.imageUrl) { proxy in
                proxy.image
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .clipped()
              }
              .frame(height: 80,
                     alignment: .center)
              .cornerRadius(6)
              VStack(alignment: .leading) {
                Text(item.title)
                  .font(.headline)
                Text(item.year)
                Text(item.overview ?? "")
                  .font(.callout)
                  .lineLimit(2)
              }
            }
            .contextMenu {
              Button(action: { addMovie(movie: item )}, label: {
                Label("Add", systemImage: "plus")
              })
            }
            
            .onTapGesture(count: 2, perform: {
              print("You double tapped on \(item.title)")
            })
          }
        }
      }
      .navigationBarTitle("Search")
    }
  }
  
  func addMovie(movie: TMDBMovie) {
    print("Adding \(movie.title)")
    
    let newMovie = Movie(from: movie)
    movieStore.addMovie(newMovie)
    
    dismiss()
  }
  
  func dismiss() {
    presentationMode.wrappedValue.dismiss()
  }
}

struct DiscoverMoviesView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      DiscoverMoviesView()
      DiscoverMoviesView()
        .preferredColorScheme(.dark)
    }
  }
}
