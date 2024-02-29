//
//  StateCellView.swift
//  States
//
//  Created by Henry Heese on 11/4/22.
//

import SwiftUI

struct StateListCellView: View {
    var state: USState
    init(state: USState) {
        self.state = state
    }
    var body: some View {
        VStack() {
            HStack() {
                Text(state.name).font(.system(size: 20, weight: .regular))
                    .frame(width: 160, alignment: .leading)
                Text(" : \(state.rank)").font(.system(size: 16, weight: .regular))
            }.frame(width: 280, height: 22, alignment: .leading)
        }.frame(width: 300, height: 21, alignment: .leading)
        
    }
}

struct StateListCellView_Previews: PreviewProvider {
    static var previews: some View {
        StateListCellView(state: USState(name:"California", rank:1, pop:39613493, pop2018:39461588, pop2010:37319502,density:254.2929))
    }
}
