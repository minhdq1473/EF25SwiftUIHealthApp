//
//  EF25SwiftUIHealthAppApp.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 18/7/25.
//

import SwiftUI

@main
struct EF25SwiftUIHealthApp: App {
    
    var body: some Scene {
        WindowGroup {
            if UserDefaults.standard.bool(forKey: "hasCompletedIntro") {
                HomeView()
            } else {
                IntroView()
            }
        }
    }
}
#Preview {
    IntroView()
}
