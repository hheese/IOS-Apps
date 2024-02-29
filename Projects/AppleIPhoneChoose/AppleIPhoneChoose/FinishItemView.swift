//
//  FinishItemView.swift
//  AppleIPhoneChoose
//
//  Created by Henry Heese on 10/10/22.
//

import SwiftUI

struct FinishItemView: View {
    var color = Color.clear
    var labelString = ""
    init(color: Color, labelString: String) {
        self.color = color
        self.labelString = labelString
    }
    
    let borderColor = Color(.sRGB, red: 0.8, green: 0.8, blue: 0.8, opacity: 1.0)
    
    var body: some View {
        
            VStack(alignment: .center) {
                Circle()
                    .fill(color)
                    .frame(width: 26, height: 26)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(borderColor, lineWidth: 1.2)
                    )
                    .padding(.bottom, 3)
                // overlay modified from https://www.hackingwithswift.com/quick-start/swiftui/how-to-draw-a-border-around-a-view
                
                Text(labelString).font(.system(size: 17, weight: .regular, design: .default))
                    
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

struct FinishItemView_Previews: PreviewProvider {
    static var previews: some View {
        FinishItemView(color: Color.red, labelString: "Sample Red")
    }
}
