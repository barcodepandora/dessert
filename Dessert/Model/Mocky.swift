//
//  Mocky.swift
//  Dessert
//
//  Created by Juan Manuel Moreno on 16/10/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import Foundation

struct Mocky: Codable {
    
    // MARK: - Character
    
    let mockyId: String?
    let type: String?
    let name: String?
    let ppu: String?
    let batters: Batters?

    
    // MARK: - Init
    
    init(dictionary: [String:AnyObject]) {
        self.mockyId = dictionary[Requester.JSONResponseKeys.mockyId] as? String
        self.type = dictionary[Requester.JSONResponseKeys.type] as? String
        self.name = dictionary[Requester.JSONResponseKeys.name] as? String
        self.ppu = dictionary[Requester.JSONResponseKeys.ppu] as? String
        self.batters = Batters(dictionary: dictionary[Requester.JSONResponseKeys.batters] as! [String:AnyObject])
        
//        self.posterPath = dictionary[Request.JSONResponseKeys.MoviePosterPath] as? String
//        self.overview = dictionary[Request.JSONResponseKeys.MovieOverview] as? String
//        self.voteAverage = dictionary[Request.JSONResponseKeys.MovieAverage] as? Double
//        self.popularity = dictionary[Request.JSONResponseKeys.MoviePopularity] as? Double
//        self.videoKey = dictionary[Request.JSONResponseKeys.MovieVideoKey] as? String
        
//        if let releaseDateString = dictionary[Request.JSONResponseKeys.MovieReleaseDate] as? String, releaseDateString.isEmpty == false {
//            releaseYear = releaseDateString.substring(to: releaseDateString.characters.index(releaseDateString.startIndex, offsetBy: 4))
//        } else {
//            releaseYear = ""
//        }
        
//        self.method = Request.shared.method // init with method
        
    }
    
//    static func showsFromResults(_ results: [[String:AnyObject]]) -> [Show] {
//        var movies = [Show]()
//        for result in results {
//            movies.append(Show(dictionary: result))
//        }
//        return movies
//    }
}

