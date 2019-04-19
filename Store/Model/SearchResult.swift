//
//  SearchResult.swift
//  Store
//
//  Created by Vinicius Mangueira Correia on 18/04/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
    
}
struct Result: Decodable {
    let trackName: String
    let primaryGenreName: String
    let artworkUrl100: String
    let screenshotUrls: [String]
    
}
