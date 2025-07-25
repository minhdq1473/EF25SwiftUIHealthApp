//
//  EF25SwiftUIHealthAppApp.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 18/7/25.
//

import SwiftUI

@main
struct EF25SwiftUIHealthApp: App {
//    @StateObject private var settingManager = SettingManager()
    var body: some Scene {
        WindowGroup {
            SettingsView()
//                .environmentObject(settingManager)
        }
    }
}
