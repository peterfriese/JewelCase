//
//  GridView.swift
//  JewelCase
//
//  Created by Peter Friese on 28/07/2020.
//

import SwiftUI

struct GridView: View {
  let movies: [Movie]
  
  @Namespace var ns
  @State private var selection: Movie? = nil
  @State var presentDiscoverScreen = false
  @EnvironmentObject var movieStore: MovieStore
  
  private let columns = [
    GridItem(.adaptive(minimum: 200))
  ]
  
  var body: some View {
    ZStack {
      NavigationView {
        List {
          LazyVGrid(columns: columns, spacing: 20) {
            ForEach(movies) { movie in
              if (movie.id != selection?.id) {
                CardView(movie: movie)
                  .onTapGesture { select(movie) }
                  .matchedGeometryEffect(id: movie.id, in: ns)
              }
              else {
                CardView(movie: movie)
                  .opacity(0)
              }
            }
          }
        }
        .navigationBarTitle("Movies")
        .toolbar(items: {
          ToolbarItem {
            Button(action: { presentDiscoverScreen.toggle() }, label: {
              Image(systemName: "magnifyingglass")
            })
          }
        })
        .sheet(isPresented: $presentDiscoverScreen){
          DiscoverMoviesView().environmentObject(movieStore)
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear() {
          movieStore.subscribe()
        }
        .onDisappear() {
          movieStore.unsubscribe()
        }

      }
      .zIndex(1)
      
      if let selection = selection {
        DetailsView(movie: selection)
          .onTapGesture { select(nil) }
          .matchedGeometryEffect(id: selection.id, in: ns)
          .zIndex(2)
      }
    }
    .edgesIgnoringSafeArea(.all)
  }
  
  func select(_ movie: Movie?) {
    withAnimation(.interactiveSpring()) {
      selection = movie
    }
  }
}

struct GridView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      GridView(movies: testData)
      GridView(movies: testData)
        .preferredColorScheme(.dark)
    }
  }
}
