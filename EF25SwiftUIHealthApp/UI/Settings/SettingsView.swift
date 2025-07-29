//
//  SettingsView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 18/7/25.
//

import SwiftUI

struct SettingsView: View {
    @StateObject private var settingManager: SettingManager = .init()
    @State private var tag: RoutingTag?
    @Binding var isTabBarVisible: Bool

    var body: some View {
        NavigationStack(path: $settingManager.navigationPath) {
            VStack(spacing: 0) {
                HomeTitleView(title: "Settings")
                membershipLabel
                listView
                Spacer()
            }
            .background(Color.background)
            .navigationDestination(for: RoutingTag.self) { destination in
                switch destination {
                case .information:
                    InformationView()
                case .profile:
                    ProfileView()
                default:
                    SettingsView(isTabBarVisible: $isTabBarVisible)
                }
            }
            .onAppear { isTabBarVisible = true }
        }
        .environmentObject(settingManager)
        
    }
    
    var membershipLabel: some View {
        Image("membership")
            .resizable()
            .frame(maxWidth: .infinity)
            .scaledToFit()
            .padding(.horizontal)
            .padding(.top, 16)
        
    }
    
    var listView: some View {
        VStack(spacing: 16) {
            Button {
                if settingManager.profile == nil {
                    settingManager.push(to: .information)
                } else {
                    settingManager.push(to: .profile)
                }
                isTabBarVisible = false
            } label: {
                SettingItemView(item: .profile)
            }
            .buttonStyle(PlainButtonStyle())
            .cornerRadius(12)
            
            
            VStack(spacing: 0) {
                ForEach([SettingItem.dailyRememer, .changeIc, .language], id: \.self) { item in
                    SettingItemView(item: item)
                    if item != .language {
                        dividerView
                    }
                }
            }
            .cornerRadius(12)
            
            
            VStack(spacing:0) {
                ForEach([SettingItem.rateUs, .feedback, .privacyPolicy, .term], id: \.self) { item in
                    SettingItemView(item: item)
                    if item != .term {
                        dividerView
                    }
                }
            }
            .cornerRadius(12)
        }
        .padding()
    }
    
    var dividerView: some View {
        Divider()
            .background(.accentLine)
            .padding(.leading,52)
            .padding(.trailing,16)
    }
}

//#Preview {
//    SettingsView()
//}
//#Preview {
//    HomeView()
//}
