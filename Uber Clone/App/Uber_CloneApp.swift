//
//  Uber_CloneApp.swift
//  Uber Clone
//
//  Created by Juan Sebastian Orozco Buitrago on 9/27/22.
//

import SwiftUI

@main
struct Uber_CloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
