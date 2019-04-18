//
//  APIService.swift
//  Store
//
//  Created by Vinicius Mangueira Correia on 18/04/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import Foundation


class Service {
    static let shared = Service()
    func fetchApps(completion: @escaping ([Result], Error?) -> () ) {
        let urlString = "https://itunes.apple.com/search?term=instagram&entity=software"
        let urlSession = URLSession.shared
        guard let url = URL(string: urlString) else {return}
        
        urlSession.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return}
            
            if let error = error {
                print("Failed to fetch apps", error)
                completion([], error)
                return
            }
            do {
                let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)
                let result = searchResult.results
                completion(searchResult.results, nil)
                
            } catch let jsonError{
                print("Failed to decode JSON:", jsonError)
                completion([], jsonError)
            }
            }.resume()
    }
}
