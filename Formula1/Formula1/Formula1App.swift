//
//  Formula1App.swift
//  Formula1
//
//  Created by cromeo on 22/11/21.
//

import SwiftUI

@main
struct Formula1App: App {
    var body: some Scene {
        WindowGroup {
            DriverDetail(driver: drivers[4])
        }
    }
}
