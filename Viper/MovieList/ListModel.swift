//
//  ListModel.swift
//  Viper
//
//  Created by José Antônio Linch Burmann on 10/03/22.
//

import UIKit

struct Movie: CustomStringConvertible, Equatable {
    let id: Int
    let title: String
    let overview: String
    let rating: Double
    
    var imageCover: UIImage?

    var description: String {
        return "The movie \(title) with ID of \(id) has \(rating) of rating. Description: \(overview) \n"
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.id == rhs.id && lhs.title == rhs.title && lhs.overview == rhs.overview
    }
}

//class MovieList: NSObject {
//  
//    var someData:[Movie]
//    
//    init(someData: [Movie]) {
//        self.someData = someData
//    }
//
//}
