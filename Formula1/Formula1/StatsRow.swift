//
//  StatsRow.swift
//  Formula1
//
//  Created by cromeo on 22/11/21.
//

import SwiftUI

struct StatsRow: View {
    
    var statKey: String
    var statValue: String
    
    var body: some View {
        HStack(alignment: .center) {
            Text(statKey + ":")
                .font(.system(size: 35))
                .fontWeight(.bold)
                .padding(.leading, 40)
            
            Text(statValue)
                .font(.system(size: 30))
                .fontWeight(.ultraLight)
                .padding(.trailing, 40)
                
            Spacer()
        }
    }
}

struct StatsRow_Previews: PreviewProvider {
    static var previews: some View {
        StatsRow(statKey: "Edad", statValue: "34")
    }
}
