//
//  StartingPriceView.swift
//  AppleIPhoneChoose
//
//  Created by Henry Heese on 10/22/22.
//

import SwiftUI

struct StartingPriceView: View {
    
    let borderColor = Color(.sRGB, red: 0.8, green: 0.8, blue: 0.8, opacity: 1.0)
    
    var body: some View {
        VStack(alignment: .center) {
            Text("From $999 or $41.62/mo. before trade-in*").font(.system(size: 17, weight: .regular, design: .default))
            
        }
        .frame(maxWidth: .infinity, maxHeight: 60)
        .background(.white)
        .border(borderColor)
    }
}

struct StartingPriceView_Previews: PreviewProvider {
    static var previews: some View {
        StartingPriceView()
    }
}
