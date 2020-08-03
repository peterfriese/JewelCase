//
//  DetailsView.swift
//  AppStoreHeroAnimation
//
//  Created by Peter Friese on 26/07/2020.
//

import SwiftUI
import URLImage

struct DetailsView: View {
  
  @Environment(\.imageSource) var imageSource
  
  let movie: Movie
  
  var body: some View {
    ScrollView(.vertical) {
      VStack(alignment: .leading) {
        heroImage
        infoPanel
      }
    }
    .edgesIgnoringSafeArea(.all)
    .background(Color(UIColor.secondarySystemBackground)
                  .edgesIgnoringSafeArea(.all))
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
      Text(movie.description)
        .font(.body)
    }
    .padding()
  }
  
}

struct DetailsView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      DetailsView(movie: testData[0])
      DetailsView(movie: testData[0])
        .preferredColorScheme(.dark)
    }
  }
}
