//
//  ContentView.swift
//  GameLeaders
//
//  Created by Henry Heese on 10/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Divider()
            PlayerRowView(title: "Passing Yards", imageL: "H Hooker", labelL: "TENN", nameL: "H. Hooker", infoL1: "15-19" ,infoL2: "225 YDS, 3TD", infoL3: "", imageR: "C Bazelak", labelR: "MIZ", nameR: "C. Bazelak", infoR1: "27-44,", infoR2: "322 YDS,", infoR3: "2 INT")
            PlayerRowView(title: "Rushing Yards", imageL: "T Evans", labelL: "TENN", nameL: "T. Evans", infoL1: "15 CAR" ,infoL2: "156 YDS, 3TD", infoL3: "", imageR: "T Badie", labelR: "MIZ", nameR: "T. Badie", infoR1: "21 CAR", infoR2: "41 YDS, 1TD,", infoR3: "")
            PlayerRowView(title: "Reveiving Yards", imageL: "V Jones Jr", labelL: "TENN", nameL: "V. Jones Jr.", infoL1: "7 REC," ,infoL2: "79 YDS, 1TD", infoL3: "", imageR: "K Chism", labelR: "MIZ", nameR: "K. Chism", infoR1: "4 REC, 76 YDS", infoR2: "", infoR3: "")
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
