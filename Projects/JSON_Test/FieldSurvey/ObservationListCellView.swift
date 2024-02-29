//
//  ObservationListCellView.swift
//  FieldSurvey
//
//  Created by Henry Heese on 12/6/22.
//

import SwiftUI

struct ObservationListCellView: View {
    var observation: Observation
    let dateFormatter = DateFormatter()
    init(observation: Observation){
        dateFormatter.dateFormat = "MMMM d, y h:mm a"
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        self.observation = observation
    }
    
    
    var body: some View {
        HStack(){
            Image(observation.classification.rawValue).frame(width:40)
            VStack(alignment: .leading){
                Text(observation.title)
                    .font(.system(size: 22, weight: .regular))
                Text(dateFormatter.string(from: observation.date))
                    .font(.system(size: 20, weight: .light))
            }
        }.frame(height: 60, alignment: .leading)
    }
}

struct ObservationListCellView_Previews: PreviewProvider {
    let dateFormatter = DateFormatter()
    static var previews: some View {
        ObservationListCellView(observation: Observation(classification: Classification(rawValue: "bird")!, title: "Red-tailed Hawk", description: "Standing in tree in middle of wooded area.", date: Date(timeIntervalSinceReferenceDate: -123456789.0)))
    }
}
