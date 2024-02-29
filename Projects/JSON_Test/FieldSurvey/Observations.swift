//
//  Observations.swift
//  JSON_Test
//
//  Created by Henry Heese on 12/6/22.
//

import Foundation
import Foundation

enum Classification: String, Codable {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
}

struct Observation: Codable, Identifiable {
    var id = UUID()
    var classification: Classification
    var title: String
    var description: String
    var date: Date
    
    private enum CodingKeys: String, CodingKey {
        case classification, title, description, date
    }
}

struct Observations: Codable {
    var status: String
    var events: [Observation]
}
