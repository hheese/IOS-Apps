//
//  Sports_Event.swift
//  SportsEvents
//
//  Created by Henry Heese on 11/8/22.
//

import Foundation

struct Sports_Event:Codable, Identifiable {
    var id = UUID()
    var sport: String
    var matchup: String
    var date: Date
    
    enum CodingKeys:String, CodingKey {
        case sport
        case matchup
        case date
    }
}
