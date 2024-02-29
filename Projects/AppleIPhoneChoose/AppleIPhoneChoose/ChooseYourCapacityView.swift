//
//  ChooseYourCapacityView.swift
//  AppleIPhoneChoose
//
//  Created by Henry Heese on 10/22/22.
//

import SwiftUI

struct ChooseYourCapacityView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Choose your capacity.").font(.system(size: 24, weight: .bold, design: .default))
                .padding(.bottom, 2)
            Text("Your current iPhone X is a 64 GB model.")
                .font(.system(size: 14, weight: .regular, design: .default)).foregroundColor(Color.gray)
                .padding(.bottom, 1)
            Text("How much capacity is right for you?")
                .font(.system(size: 14, weight: .regular, design: .default)).foregroundColor(Color.blue)
                .padding(.bottom, 18)
            VStack(alignment: .center) {
                HStack() {
                    CapacityItemView(capacity: "128GB", price_once: "999", price_monthly: "41.62")
                    CapacityItemView(capacity: "256GB", price_once: "1099", price_monthly: "45.79")
                }
                HStack() {
                    CapacityItemView(capacity: "512GB", price_once: "1299", price_monthly: "54.12")
                    CapacityItemView(capacity: "1TB", price_once: "1499", price_monthly: "62.45")
                }
            }
        }
    }
}

struct ChooseYourCapacityView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseYourCapacityView()
    }
}
