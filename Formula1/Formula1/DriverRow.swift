//
//  DriverRow.swift
//  Formula1
//
//  Created by cromeo on 22/11/21.
//

import SwiftUI

struct DriverRow: View {
    
    var driver: Driver
    
    var body: some View {
        HStack {
            Image(driver.imageName)
                .resizable().scaledToFit()
                .clipShape(Circle())
                .background(Circle().foregroundColor(driver.team.color))
                .padding(.leading, 10)
            
            Text(driver.name)
                .font(.largeTitle)
            
            Spacer()
        }
    }
}







struct DriverRow_Previews: PreviewProvider {
    static var previews: some View {
            DriverRow(driver: drivers[0]).previewLayout(.fixed(width: 450, height: 100))
        
        }
}
