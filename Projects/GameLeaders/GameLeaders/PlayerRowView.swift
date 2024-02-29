//
//  PlayerRowView.swift
//  GameLeaders
//
//  Created by Henry Heese on 10/7/22.
//

import SwiftUI

struct PlayerRowView: View {
    var title: String
    var imageL: String
    var labelL: String
    var nameL: String
    var infoL1: String
    var infoL2: String
    var infoL3: String
    var imageR: String
    var labelR: String
    var nameR: String
    var infoR1: String
    var infoR2: String
    var infoR3: String
    
    var body: some View {
        VStack(alignment: .center) {
            Text(title)
            HStack() {
                VStack(){
                    Image(imageL)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                    Text(labelL)
                        .font(.system(size: 12, weight: .light, design: .default))
                }
                VStack(alignment: .trailing) {
                    Text(nameL)
                        .font(.system(size: 13, weight: .medium, design: .default))
                    Text(infoL1)
                        .font(.system(size: 12, weight: .light, design: .default))
                    Text(infoL2)
                        .font(.system(size: 12, weight: .light, design: .default))
                    Text(infoL3)
                        .font(.system(size: 12, weight: .light, design: .default))
                }
                Divider()
                VStack(alignment: .leading) {
                    Text(nameR)
                        .font(.system(size: 13, weight: .medium, design: .default))
                    Text(infoR1)
                        .font(.system(size: 12, weight: .light, design: .default))
                    Text(infoR2)
                        .font(.system(size: 12, weight: .light, design: .default))
                    Text(infoR3)
                        .font(.system(size: 12, weight: .light, design: .default))
                }
                VStack{
                    Image(imageR)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                    Text(labelR)
                        .font(.system(size: 12, weight: .light, design: .default))
                }
            }
            Divider()
        }
            .frame(maxHeight: 120)
    }
}

struct PlayerRowView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRowView(title: "Passing Yards", imageL: "H Hooker", labelL: "TENN", nameL: "H. Hooker", infoL1: "15-19" ,infoL2: "225 YDS, 3TD", infoL3: "", imageR: "C Bazelak", labelR: "MIZ", nameR: "C. Bazelak", infoR1: "27-44,", infoR2: "322 YDS,", infoR3: "2 INT")
    }
}

