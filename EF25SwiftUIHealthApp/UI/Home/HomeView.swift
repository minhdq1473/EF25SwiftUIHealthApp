//
//  HomeView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 18/7/25.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab = 0
    
    var body: some View {
//        ZStack{
//            TabView(selection: $selectedTab) {
//                ReportView()
//                    .tabItem {
//                        selectedTab == 0 ? Image("colored-chart") : Image("chart")
//                        Text("Report")
//                    }
//                    .tag(0)
//                SettingsView()
//                    .tabItem {
//                        selectedTab == 1 ? Image("colored-setting") : Image("setting")
//                        Text("Settings")
//                    }
//                    .tag(1)
//            }
//            .onAppear {
//                let appearance = UITabBarAppearance()
//                let attributes: [NSAttributedString.Key: Any] = [
//                    .font: UIFont.systemFont(ofSize: 14, weight: .regular)
//                ]
//                appearance.stackedLayoutAppearance.normal.titleTextAttributes = attributes
//                appearance.configureWithTransparentBackground()
//                
//                UITabBar.appearance().standardAppearance = appearance
//                UITabBar.appearance().scrollEdgeAppearance = appearance
//                UITabBar.appearance().backgroundColor = .neutral5
//                
//                //                UITabBar.appearance().isTranslucent = false
//            }
//           
//        }
//        .accentColor(.primary1)
        //        .background(Color.background)
        let tabItems = TabItem.allCases
        
        VStack {
            if selectedTab == 0 { ReportView() } else { SettingsView() }
            
            RoundedTabBar(selectedTab: $selectedTab, tabItems: tabItems)
                .frame(height: 80)
                .background(Color.neutral5)
                .cornerRadius(20)
                .shadow(color: Color.gray.opacity(0.2), radius: 20, x: 0, y: -4)

        }
        .background(Color.background)
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    HomeView()
}

