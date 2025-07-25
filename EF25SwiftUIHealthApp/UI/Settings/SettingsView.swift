//
//  SettingsView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 18/7/25.
//

import SwiftUI

struct SettingsView: View {
//    @State var profile: Profile
    @StateObject private var settingManager: SettingManager = .init()
    @State private var tag: RoutingTag?
//    @Binding var navigationPath: NavigationPath
    var body: some View {
        NavigationStack(path: $settingManager.navigationPath) {
            VStack {
                titleView
                    .padding(.bottom, 16)
                membership
                formView
            }
//            .navigationTitle("Settings")
            .navigationBarBackButtonHidden(true)
            .navigationDestination(for: RoutingTag.self) { destination in
                switch destination {
                case .information:
                    InformationView()
                case .profile:
                    ProfileView()
                default:
                    SettingsView()
                }
            }
            .onChange(of: settingManager.navigationPath) { newValue in
                print("CHANGE", newValue.count)
            }
        }
        .background(Color.background)
        .environmentObject(settingManager)
    }
    
    var titleView: some View {
        Text("Settings")
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: 32, weight: .semibold))
            .padding(.leading, 16)
    }
    
    var membership: some View {
        Image("membership")
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity, maxHeight: 120)
            .padding(.horizontal)
    }
    
    var formView: some View {
        Form {
            Section() {
//                navigationDestination(for: String.self) { value in
//                    if value = "Information" {
//                    InformationView(profile: value)
//                }
//                navigationDestination(item: $profile) { profile in
//                    InformationView(profile: $profile)
//                }
//                navigationDestination(for: <#T##Hashable.Type#>) { Hashable in
//
//                }
//                NavigationLink(destination: {
//                    if let profile.isEmpty {
////                        ProfileView(profile: $profile)
//                        settingManager.push(to: "ProfileView")
//                    } else {
////                        InformationView(profile: $profile)
//                        settingManager.push(to: "InformationView")
//                    }
//                }) {
//                    SettingItemView(item: .allCases[0])
//
//                    
//                }
//                NavigationLink(value: settingManager.profile == nil ? "InformationView" : "ProfileView") {
//
//                }
                Button {
                    if settingManager.profile == nil {
//                        settingManager.navigationPath.append("InformationView")
                        settingManager.push(to: .information)
                    } else {
//                        settingManager.navigationPath.append("ProfileView")
                        settingManager.push(to: .profile)

                    }
                } label: {
                    SettingItemView(item: .allCases[0])
                }
                .buttonStyle(PlainButtonStyle())

            }
            Section() {
//                Image("list2")
                SettingItemView(item: .allCases[1])
                SettingItemView(item: .allCases[2])
                SettingItemView(item: .allCases[3])
            }
            Section() {
                SettingItemView(item: .allCases[4])
                SettingItemView(item: .allCases[5])
                SettingItemView(item: .allCases[6])
                SettingItemView(item: .allCases[7])
            }
        }
        
    }
    
}

#Preview {
    SettingsView()
}
