//
//  ChooseYourFinishView.swift
//  AppleIPhoneChoose
//
//  Created by Henry Heese on 10/10/22.
//

import SwiftUI

struct ChooseYourFinishView: View {
    
    
    let sierraBlue = Color(.sRGB, red: 0.694, green: 0.776, blue: 0.851, opacity: 1.0)
    let silver = Color(.sRGB, red: 0.953, green: 0.957, blue: 0.941, opacity: 1.0)
    let gold = Color(.sRGB, red: 0.969, green: 0.925, blue: 0.843, opacity: 1.0)
    let graphite = Color(.sRGB, red: 0.376, green: 0.365, blue: 0.357, opacity: 1.0)
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Choose your finish.").font(.system(size: 24, weight: .bold, design: .default))
                .padding(.bottom, 18)
            VStack(alignment: .center) {
                HStack() {
                    FinishItemView(color: sierraBlue, labelString: "Sierra Blue")
                    FinishItemView(color: silver, labelString: "Silver")
                }
                HStack() {
                    FinishItemView(color: gold, labelString: "Gold")
                    FinishItemView(color: graphite, labelString: "Graphite")
                }
            }
        }
    }
    
}

struct ChooseYourFinishView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseYourFinishView()
    }
}
