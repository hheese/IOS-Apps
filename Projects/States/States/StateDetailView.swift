//
//  StateInfoView.swift
//  States
//
//  Created by Henry Heese on 11/4/22.
//

import SwiftUI

struct StateDetailView: View {
    var state: USState
    init(state: USState) {
        self.state = state
    }
    
    var body: some View {
        NavigationView() {
            VStack(){
                
                Text("Welcome To:").font(.system(size: 16, weight: .regular))
                Text(state.name).font(.system(size: 32, weight: .regular))
                Divider().frame(width: 300, height:1).overlay(.black)
                
                VStack(alignment: .leading) {
                    Text("Rank : \(state.rank)").font(.system(size: 16, weight: .regular))
                    Text("Population (2022): \(state.pop)").font(.system(size: 16, weight: .regular))
                    Text("Population (2018): \(state.pop2018)").font(.system(size: 16, weight: .regular))
                    Text("Population (2010): \(state.pop2010)").font(.system(size: 16, weight: .regular))
                    Text("Density : \(state.density)").font(.system(size: 16, weight: .regular))
                    Spacer()
                }.frame(width: 280, alignment: .leading)
            }.frame(width: 300, alignment: .center)
        }
    }
}

struct StateInfoView_Previews: PreviewProvider {
    static var previews: some View {
        StateDetailView(state: USState(name:"California", rank:1, pop:39613493, pop2018:39461588, pop2010:37319502,density:254.2929))
    }
}
