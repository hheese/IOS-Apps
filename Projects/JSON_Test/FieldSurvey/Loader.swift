//
//  Loader.swift
//
//  Created by DALE MUSSER on 11/10/21.
//

import Foundation

import Foundation

class Loader {
    
    class func load(jsonFileName: String) -> Observations? {
        var observations: Observations?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
                observations = try? jsonDecoder.decode(Observations.self, from: jsonData)
        }
        
        return observations
    }
}

