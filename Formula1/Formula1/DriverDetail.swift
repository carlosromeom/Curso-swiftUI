//
//  DriverDetail.swift
//  Formula1
//
//  Created by cromeo on 22/11/21.
//

import SwiftUI

struct DriverDetail: View {
    var driver: Driver
    var body: some View {
        VStack {
            Image(driver.team.imageName)
                .resizable()
                .frame(height: 200)
            
            Image(driver.imageName)
                .resizable()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(.white, lineWidth: 5))
                .shadow(radius: 18)
                .offset(x: 0, y: -60)
                .padding(.bottom, -60)
            
            Text(driver.name)
                .font(.system(size: 45))
                .fontWeight(.bold)
            
            StatsRow(statKey: "Edad", statValue: String(driver.age))
            StatsRow(statKey: "Número", statValue: String(driver.number))
            StatsRow(statKey: "Origen", statValue: driver.birthPlace)
            
            
            Spacer()
            
            
        }.edgesIgnoringSafeArea(.top)
        
        
    }
}

struct DriverDetail_Previews: PreviewProvider {
    static var previews: some View {
        DriverDetail(driver: drivers[4])
            .previewInterfaceOrientation(.portrait)
    }
}
