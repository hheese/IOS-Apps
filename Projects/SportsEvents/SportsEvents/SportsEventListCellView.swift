//
//  SportsEventListCellView.swift
//  SportsEvents
//
//  Created by Henry Heese on 11/8/22.
//
// Source for date formatting: https://benoitpasquier.com/date-formatter-swiftui/


import SwiftUI


struct SportsEventListCellView: View {
    var event: Sports_Event
    
    let dateFormatter: DateFormatter
    
    init(event: Sports_Event) {
        self.event = event
        dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
    }
    
    var body: some View {
        
        HStack() {
            Image(event.sport).frame(width: 40, alignment: .leading)
            VStack() {
                Text(event.matchup).font(.system(size: 20, weight: .medium))
                    .frame(width: 260)
                Text(event.date, formatter: dateFormatter).font(.system(size: 17, weight: .regular))
            }
        }
    }
}

struct SportsEventListCellView_Previews: PreviewProvider {
    
    static let eventpreview = Sports_Event(
        sport : "hockey",
        matchup : "dogs vs cats",
        date : Date(timeIntervalSinceNow:0)
    )
    
    static var previews: some View {
        SportsEventListCellView(event: eventpreview)
    }
}
