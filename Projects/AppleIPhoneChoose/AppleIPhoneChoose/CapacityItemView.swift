//
//  CapacityItemView.swift
//  AppleIPhoneChoose
//
//  Created by Henry Heese on 10/22/22.
//

import SwiftUI

struct CapacityItemView: View {
    var capacity = ""
    var price_once = ""
    var price_monthly = ""
    init(capacity: String, price_once: String, price_monthly: String) {
        self.capacity = capacity
        self.price_once = price_once
        self.price_monthly = price_monthly
    }
    
    let borderColor = Color(.sRGB, red: 0.8, green: 0.8, blue: 0.8, opacity: 1.0)
    
    
    
    var body: some View {
        VStack(alignment: .center) {
            
            Text(capacity + "\u{00B2}")
                .font(.system(size: 18, weight: .regular, design: .default))
                .padding(.bottom, 0.5)
            Text("From $" + price_once + " or $" + price_monthly + "/mo.")
                .font(.system(size: 13, weight: .regular, design: .default)).foregroundColor(Color.gray)
                
            Text("before trade-in*")
                .font(.system(size: 13, weight: .regular, design: .default)).foregroundColor(Color.gray)
                
        }
        
        
        .frame(width: 180, height: 100)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(borderColor, lineWidth: 1.2)
        )
        .background(.white)
        .cornerRadius(16)
    }
}

struct CapacityItemView_Previews: PreviewProvider {
    static var previews: some View {
        CapacityItemView(capacity: "128GB", price_once: "999", price_monthly: "41.62")
    }
}
