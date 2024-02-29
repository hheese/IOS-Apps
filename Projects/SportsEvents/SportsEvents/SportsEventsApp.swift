//
//  SportsEventsApp.swift
//  SportsEvents
//
//  Created by Henry Heese on 11/8/22.
//

import SwiftUI
/*
struct Sports_Events:Codable, Identifiable {
    var id = UUID()
    var status: String
    var events: [Sports_Event]
    
    enum CodingKeys:String, CodingKey {
        case status
        case events
    }
}

struct Sports_Event:Codable, Identifiable {
    var id = UUID()
    var sport: String
    var matchup: String
    var date: String
    
    enum CodingKeys:String, CodingKey {
        case sport
        case matchup
        case date
    }
}
*/
class Sports_Events_Loader {
    class func load(jsonFileName: String) -> Sports_Events? {
        var sports_events: Sports_Events?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
           let jsonData = try? Data(contentsOf: jsonFileUrl){
            sports_events = try? jsonDecoder.decode(Sports_Events.self, from: jsonData)
        }
        return sports_events
    }
    
}



@main
struct SportsEventsApp: App {
    let sports_events: Sports_Events?

    init() {
        sports_events = Sports_Events_Loader.load(jsonFileName: "sports_events")
        if let sports_events = sports_events {
            print("Status: \(sports_events.status)")
            for sports_event in sports_events.events {
                print("id = \(sports_event.id), sport = \(sports_event.sport)")
            }
        } else {
            print("didn't work")
        }
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView(events: sports_events!)
        }
    }
}


