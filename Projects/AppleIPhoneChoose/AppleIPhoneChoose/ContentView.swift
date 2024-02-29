//
//  ContentView.swift
//  AppleIPhoneChoose
//
//  Created by Henry Heese on 10/10/22.
//

import SwiftUI

struct ContentView: View {
    
    let backgroundColor = Color(.sRGB, red: 0.953, green: 0.953, blue: 0.969, opacity: 1.0)
    
    
    var body: some View {
        VStack() {
            StartingPriceView()
                .padding(.bottom, 8)
            ChooseYourFinishView()
                .padding(.bottom, 45)
            ChooseYourCapacityView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
