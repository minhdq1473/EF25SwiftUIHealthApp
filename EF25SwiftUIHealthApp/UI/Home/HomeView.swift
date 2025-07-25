//
//  HomeView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 18/7/25.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab = 0
    @EnvironmentObject private var settingManager: SettingManager
    var body: some View {
        TabView(selection: $selectedTab) {
            ReportView()
                .tabItem {
                    selectedTab == 0 ? Image("colored-chart") : Image("chart")
                    Text("Report")
                        .font(.system(size: 14, weight: .regular))
                }
                .tag(0)
            SettingsView()
                .tabItem {
                    selectedTab == 1 ? Image("colored-setting") : Image("setting")
                    Text("Settings")
                }
                .tag(1)
        }
        .onAppear {
//            UITabBar.appearance().barTintColor = .primary1
            UITabBar.appearance().isTranslucent = false
            UITabBar.appearance().backgroundColor = .neutral5
//            UITabBar.appearance().scrollEdgeAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.font(system(size: 14, weight: regular))]
        }
        .accentColor(.primary1)
    }
}

#Preview {
    HomeView()
}

