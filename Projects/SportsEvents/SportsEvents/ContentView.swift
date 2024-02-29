//
//  ContentView.swift
//  SportsEvents
//
//  Created by Henry Heese on 11/8/22.
//

import SwiftUI

struct ContentView: View {
    var events: Sports_Events
    var body: some View {
        VStack {
            List(events.events) { event in
                    SportsEventListCellView(event: event)
                
            }             
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static let eventpreview1 = Sports_Event(
        sport : "hockey",
        matchup : "dogs vs cats",
        date : Date(timeIntervalSinceNow:0)
    )
    static let eventpreview2 = Sports_Event(
        sport : "basketball",
        matchup : "dogs vs cats",
        date : Date(timeIntervalSinceNow:0)
    )
    static let eventspreview = Sports_Events(
        status : "ok",
        events : [eventpreview1, eventpreview2]
    )
    static var previews: some View {
        ContentView(events: eventspreview)
    }
}

