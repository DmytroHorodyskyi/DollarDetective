//
//  DollarDetectiveApp.swift
//  DollarDetective
//
//  Created by Dmytro Horodyskyi on 17.03.2023.
//

import SwiftUI

@main
struct DollarDetectiveApp: App {

    @StateObject var launchScreenState = LaunchScreenStateManager()

    var body: some Scene {
        WindowGroup {
            ZStack {
                MainContentView()
                if launchScreenState.state != .finished {
                    LaunchScreenView()
                }
            }
            .environmentObject(launchScreenState)
        }
    }
}
