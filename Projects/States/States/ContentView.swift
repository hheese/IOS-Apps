//
//  ContentView.swift
//  States
//
//  Created by Henry Heese on 11/3/22.
//

import SwiftUI



struct ContentView: View {
    var states: [USState] = USStates.list
    init() {
        
    }
    var body: some View {
        NavigationView {
            List(states) { state in
                NavigationLink(destination: StateDetailView(state: state)) {
                    StateListCellView(state: state)
                }
            }.navigationTitle("States")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


