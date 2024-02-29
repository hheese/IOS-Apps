//
//  Sports_Events.swift
//  SportsEvents
//
//  Created by Henry Heese on 11/8/22.
//

import Foundation

struct Sports_Events:Codable, Identifiable {
    var id = UUID()
    var status: String
    var events: [Sports_Event]
    
    enum CodingKeys:String, CodingKey {
        case status
        case events
    }
}

