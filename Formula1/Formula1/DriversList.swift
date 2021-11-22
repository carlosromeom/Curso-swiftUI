//
//  DriversList.swift
//  Formula1
//
//  Created by cromeo on 22/11/21.
//

import SwiftUI

struct DriversList: View {
    var body: some View {
        NavigationView {
        List(drivers) {
            driver in
            NavigationLink(destination: DriverDetail(driver: driver)) {
                DriverRow(driver: driver)
            }
        }
        .navigationBarTitle(Text("Formula 1 - 2019"), displayMode: .large)
        }
    }
}

struct DriversList_Previews: PreviewProvider {
    static var previews: some View {
        DriversList()
    }
}
