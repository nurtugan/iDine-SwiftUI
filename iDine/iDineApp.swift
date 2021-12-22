//
//  iDineApp.swift
//  iDine
//
//  Created by Nurtugan Nuraly on 12/20/21.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
