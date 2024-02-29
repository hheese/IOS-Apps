//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Henry Heese on 9/21/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("football")
            Image("hockey")
            Image("Baseball")
            Image("Basketball")
            /*
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            */
            Text("Hello, world.")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
