//
//  Movie.swift
//  JewelCase
//
//  Created by Peter Friese on 28/07/2020.
//

import Foundation

struct Movie: Codable, Identifiable {
  var id = UUID().uuidString
  var title: String
  var subTitle: String
  var description: String
  var releaseDate: Date
  var coverImageName: String
  var posterPath: String
  var rating: Double
}

let testData = [
  Movie(title: "The Martian",
        subTitle: "Bring Him Home",
        description: "During a manned mission to Mars, Astronaut Mark Watney is presumed dead after a fierce storm and left behind by his crew. But Watney has survived and finds himself stranded and alone on the hostile planet. With only meager supplies, he must draw upon his ingenuity, wit and spirit to subsist and find a way to signal to Earth that he is alive.",
        releaseDate: Date.fromString(dateString: "2015-10-02")!,
        coverImageName: "martian",
        posterPath: "/5BHuvQ6p9kfc091Z8RiFNhCwL4b.jpg",
        rating: 0.77),
  Movie(title: "The Man from U.N.C.L.E.",
        subTitle: "Saving the world never goes out of style.",
        description: "At the height of the Cold War, a mysterious criminal organization plans to use nuclear weapons and technology to upset the fragile balance of power between the United States and Soviet Union. CIA agent Napoleon Solo and KGB agent Illya Kuryakin are forced to put aside their hostilities and work together to stop the evildoers in their tracks. The duo's only lead is the daughter of a missing German scientist, whom they must find soon to prevent a global catastrophe.",
        releaseDate: Date.fromString(dateString: "2015-07-14")!,
        coverImageName: "uncle",
        posterPath: "/9n8hkZXTdNsyMhW87jLuvDf7l4S.jpg",
        rating: 0.71),
  Movie(title: "Sherlock",
        subTitle: "A new sleuth for the 21st century.",
        description: "A modern update finds the famous sleuth and his doctor partner solving crime in 21st century London.",
        releaseDate: Date.fromString(dateString: "2010-06-25")!,
        coverImageName: "sherlock",
        posterPath: "/aguWVR8xNilvw7t4X03UvG1hRJr.jpg",
        rating:  0.84)
]
