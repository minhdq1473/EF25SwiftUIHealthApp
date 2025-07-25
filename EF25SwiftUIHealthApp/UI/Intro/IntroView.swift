////
////  IntroView.swift
////  EF25SwiftUIHealthApp
////
////  Created by iKame Elite Fresher 2025 on 18/7/25.
////
//
//import SwiftUI
//
//struct IntroView: View {
//    @State var selectedTab = 0
//    let columns = [GridItem(.flexible(), spacing: 16), GridItem(.flexible())]
//    var introTitle: IntroTitle
//    var items: [IntroItem]
////    var columns = 2
//    
//    var body: some View {
//        TabView(selection: $selectedTab) {
//            VStack {
//                OpeningView()
//                Spacer()
//                continueButton
//            }
//            .tag(0)
//            
//            VStack {
//                Text(IntroTitle.concern.rawValue)
//                    .font(.system(size: 26, weight: .bold))
//                    .frame(maxWidth: .infinity, alignment: .center)
//                    .padding(.vertical, 24)
//                
//                LazyVGrid(columns: columns, spacing: 16) {
//                    ForEach(items, id: \.self) { value in
//                        IntroItemView(item: value, isSelected: true)
//                    }
//                }
//                .padding(.horizontal)
////                Text(introTitle.rawValue)
////                    .font(.system(size: 26, weight: .bold))
////                    .frame(alignment: .center)
////                LazyVGrid(columns: columns , spacing: 16) {
////                    ForEach(items, id: \.self) { value in
////                        IntroItemView(item: value, isSelected: true)
////                    }
////                }
//                Spacer()
//                continueButton
//            }
//            .tag(1)
//        }
////        .tabViewStyle(.sidebarAdaptable)
//    }
//    private var continueButton: some View {
//        Button(action: {
//            if selectedTab < 4 {
//                selectedTab += 1
//            }
//        }) {
//            if selectedTab == 0 {
//                ButtonView(buttonTitle: "Continue", isEnable: true)
//            } else {
//                ButtonView(buttonTitle: "Continue", isEnable: false)
//            }
////            Text("Continue")
////                .font(.system(size: 16, weight: .semibold))
////                .foregroundColor(.white)
////                .frame(maxWidth: .infinity)
////                .frame(height: 56)
////                .background(.primary1)
////                .cornerRadius(16)
//        }
//        .padding(.horizontal, 16)
//        .padding(.bottom, 16)
//    }
//}
//
//#Preview {
//    IntroView(introTitle: .concern, items: IntroItem.allCases)
//}
