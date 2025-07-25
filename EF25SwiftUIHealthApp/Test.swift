////
////  Test.swift
////  EF25SwiftUIHealthApp
////
////  Created by iKame Elite Fresher 2025 on 22/7/25.
////
//
//import SwiftUI
//
//struct TabBarView: View {
//    
//    @State var selectedTab = 0
//    
//    var body: some View {
//        ZStack(alignment: .bottom) {
//            TabView(selection: $selectedTab) {
//                HomeView()
//                    .tag(0)
//                
//                ReportView()
//                    .tag(1)
//                
//                SettingsView()
//                    .tag(2)
//                
//                OpeningView()
//                    .tag(3)
//                
//               
//            }
//            
//            RoundedRectangle(cornerRadius: 25)
//                .frame(width: 350, height: 70)
//                .foregroundColor(.white)
//                .shadow(radius: 0.8)
//            
//            Button {
//                selectedTab = 2
//            } label: {
//                Text("2")
////                CustomTabItem(imageName: "ticket", title: "Ticket", isActive: (selectedTab == 2))
//            }
//            .frame(width: 65, height: 65)
//            .background(Color.white)
//            .clipShape(Circle())
//            .shadow(radius: 0.8)
//            .offset(y: -50)
//            
//            HStack {
//                ForEach(IntroItem.allCases, id: \.self) { value in
//                    IntroItemView(item: value, isSelected: true)
//                }
////                ForEach(IntroItem.allCases, id: \.self) { item in
////                    
////                    if item != .ticket { // Exclude the center button
////                        Button {
////                            selectedTab = item.rawValue
////                        } label: {
////                            CustomTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
////                        }
////                    }
////                }
//            }
//            .frame(height: 70)
//        }
//    }
//}
//
//#Preview {
//    TabBarView(selectedTab: 0)
//}
