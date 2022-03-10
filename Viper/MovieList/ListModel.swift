//
//  ListModel.swift
//  Viper
//
//  Created by José Antônio Linch Burmann on 10/03/22.
//

import Foundation

class Movie {
    
    var title: String
    var score: Double
    var description: String
    
    init(title: String, score: Double, description: String) {
        self.title = title
        self.score = score
        self.description = description
    }

}

class MovieList {
  
    var someData:[Movie]
    
    init(someData: [Movie]) {
        self.someData = someData
    }
  

}
