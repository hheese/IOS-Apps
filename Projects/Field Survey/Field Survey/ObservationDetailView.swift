//
//  ObservationDetailView.swift
//  FieldSurvey
//
//  Created by Henry Heese on 11/11/22.
//

import SwiftUI

struct ObservationDetailView: View {
    var observation: Observation
    let dateFormatter = DateFormatter()
    init(observation: Observation){
        dateFormatter.dateFormat = "MMMM d, y h:mm a"
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        self.observation = observation
    }
    
    
    var body: some View {
        NavigationView() {
            VStack(){
                
                Text("Observation of:").font(.system(size: 16, weight: .regular))
                Text(observation.title).font(.system(size: 32, weight: .regular))
                HStack() {
                    Text("Classification:").font(.system(size: 22, weight: .regular))
                    Text(observation.classification.rawValue).font(.system(size: 22, weight: .regular))
                }
                Image(observation.classification.rawValue)
                
                Divider().frame(width: 300, height:1).overlay(.black)
                
                VStack(alignment: .center) {
                    Text("Described as:")
                        .font(.system(size: 22, weight: .regular))
                        .padding(.bottom, 5)
                    Text(observation.description)
                        .font(.system(size: 22, weight: .regular))
                        .padding(.bottom, 30)
                    Text("Date of Sighting:")
                        .font(.system(size: 22, weight: .regular))
                        .padding(.bottom, 5)
                    Text(dateFormatter.string(from: observation.date))
                        .font(.system(size: 22, weight: .regular))
                }.frame(width: 280, alignment: .center)
            }.frame(width: 300, alignment: .center)
        }
    }
}

struct ObservationDetailView_Previews: PreviewProvider {
    let dateFormatter = DateFormatter()
    static var previews: some View {
        ObservationDetailView(observation: Observation(classification: Classification(rawValue: "bird")!, title: "Red-tailed Hawk", description: "Standing in tree in middle of wooded area.", date: Date(timeIntervalSinceReferenceDate: -123456789.0)))
    }
}
