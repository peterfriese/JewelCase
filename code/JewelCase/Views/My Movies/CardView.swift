//
//  MovieCardView.swift
//  JewelCase
//
//  Created by Peter Friese on 28/07/2020.
//

import SwiftUI
import URLImage

struct CardView: View {
  
  @Environment(\.imageSource) var imageSource
  
  let movie: Movie
  
  var body: some View {
    VStack(alignment: .leading) {
      heroImage
      infoPanel
    }
    .frame(minWidth: 0,
           maxWidth: .infinity,
           minHeight: 0,
           maxHeight: .infinity,
           alignment: .center)
    .background(Color(UIColor.secondarySystemBackground))
    .cornerRadius(15)
    .shadow(radius: 10)
  }
  
  @ViewBuilder var heroImage: some View {
    switch imageSource {
    case .local:
      Image(movie.coverImageName)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity,
               alignment: .center)
        .clipped()
    case .remote:
      URLImage(movie.imageUrl) { proxy in
        proxy.image
          .resizable()
          .aspectRatio(contentMode: .fit)
          .clipped()
      }
      .frame(minWidth: 0,
             maxWidth: .infinity,
             minHeight: 0,
             maxHeight: .infinity,
             alignment: .center)
    }
  }
  
  @ViewBuilder var infoPanel: some View {
    VStack(alignment: .leading) {
      Text(movie.title)
        .font(.title)
      Text(movie.subTitle)
        .font(.body)
    }
    .padding()
  }
  
}

struct CardView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      CardView(movie: testData[2])
      CardView(movie: testData[0])
        .preferredColorScheme(.dark)
    }
  }
}
