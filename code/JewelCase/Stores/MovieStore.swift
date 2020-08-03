//
//  AppState.swift
//  JewelCase
//
//  Created by Peter Friese on 29/07/2020.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class MovieStore: ObservableObject {
  @Published var movies = [Movie]()
  
  private var db = Firestore.firestore()
  private var listenerRegistration: ListenerRegistration?
  
  deinit {
    unsubscribe()
  }
  
  func unsubscribe() {
    if listenerRegistration != nil {
      listenerRegistration?.remove()
      listenerRegistration = nil
    }
  }
  
  func subscribe() {
    if listenerRegistration == nil {
      db.collection("movies").addSnapshotListener { (querySnapshot, error) in
        guard let documents = querySnapshot?.documents else {
          print("No documents")
          return
        }
        
        self.movies = documents.compactMap { queryDocumentSnapshot in
          try? queryDocumentSnapshot.data(as: Movie.self)
        }
      }
    }
  }
  
  func addMovie(_ movie: Movie) {
    do {
      let _ = try db.collection("movies").addDocument(from: movie)
    }
    catch {
      print(error)
    }
  }
}
