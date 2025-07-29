//
//  IntroView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 18/7/25.
//

import SwiftUI

struct IntroView: View {
    @StateObject private var tabManager = TabManager()

    let columns = [GridItem(.flexible(), spacing: 16), GridItem(.flexible())]
    
    var body: some View {
        VStack() {
            if tabManager.hasCompletedOnboarding {
                HomeView()
            } else {
                tabView
                continueButton
            }
        }
        .background(Color.background)
    }
    
    private var tabView: some View {
        TabView(selection: Binding(
            get: {tabManager.selectedTab},
            set: {tabManager.updateIntroTab($0)}
        )) {
            ZStack {
                OpeningView()
            }
            .contentShape(Rectangle())
            .tag(0)
            .gesture(DragGesture())

            
            
            VStack {
                OnboardingTitleView(title: IntroTitle.concern.rawValue)
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(IntroConcern.allCases, id: \.self) { item in
                            IntroConcernView(concern: item, isSelected: tabManager.selectedConcerns.contains(item))
                                .onTapGesture {
                                    tabManager.toggleConcern(item)
                                }
                        }
                    }
                    .padding(.top, 1)
                    .padding(.horizontal)
                    Spacer()
                }
                
            }
            .contentShape(Rectangle())
            .tag(1)
            .gesture(DragGesture())

            
            VStack {
                OnboardingTitleView(title: IntroTitle.target.rawValue)
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(IntroTarget.allCases, id: \.self) { item in
                            IntroTargetView(target: item, isSelected: tabManager.selectedTargets.contains(item))
                                .onTapGesture {
                                    tabManager.toggleTarget(item)
                                }
                        }
                        
                    }
                    .padding(.top, 1)
                    .padding(.horizontal)
                    Spacer()
                }
            }
            .tag(2)
            .contentShape(Rectangle())
            .gesture(DragGesture())

            
            VStack {
                OnboardingTitleView(title: IntroTitle.plan.rawValue)
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(IntroPlan.allCases, id: \.self) { item in
                            IntroPlanView(plan: item, isSelected: tabManager.selectedPlans.contains(item))
                                .onTapGesture {
                                    tabManager.togglePlan(item)
                                }
                        }
                    }
                    .padding(.top, 1)
                    .padding(.horizontal)
                    Spacer()
                }
            }
            .tag(3)
            .contentShape(Rectangle())
            .gesture(DragGesture())

        }
        
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .animation(.default, value: tabManager.selectedTab)
    }
    private var continueButton: some View {
        ButtonView(buttonAction: {
            if tabManager.selectedTab < 3 {
                tabManager.updateIntroTab(tabManager.selectedTab + 1)
            } else {
                tabManager.completeOnboarding()
            }
        }, buttonTitle: "Continue", isEnable: isEnableButton())
        .padding(.horizontal, 16)
    }
    
    private func isEnableButton() -> Bool {
        switch tabManager.selectedTab {
        case 0:
            return true
        case 1:
            return !tabManager.selectedConcerns.isEmpty
        case 2:
            return !tabManager.selectedTargets.isEmpty
        case 3:
            return !tabManager.selectedPlans.isEmpty
        default:
            return false
        }
    }
}

#Preview {
    IntroView()
}
