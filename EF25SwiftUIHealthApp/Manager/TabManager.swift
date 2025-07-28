//
//  TabManager.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 26/7/25.
//

import SwiftUI

class TabManager: ObservableObject {
    @Published var selectedTab: Int
    @Published var hasCompletedOnboarding: Bool
    @Published var selectedConcerns: Set<IntroConcern>
    @Published var selectedTargets: Set<IntroTarget>
    @Published var selectedPlans: Set<IntroPlan>
    
    init() {
        self.selectedTab = UserDefaults.standard.integer(forKey: "selectedTab")
        self.hasCompletedOnboarding = UserDefaults.standard.bool(forKey: "hasCompletedOnboarding")
        
        let concernValue = UserDefaults.standard.array(forKey: "selectedConcerns") as? [String] ?? []
        self.selectedConcerns = Set(concernValue.compactMap {IntroConcern(rawValue: $0)})
        
        let targetValue = UserDefaults.standard.array(forKey: "selectedTargets") as? [String] ?? []
        self.selectedTargets = Set(targetValue.compactMap {IntroTarget(rawValue: $0)})
        
        let planValue = UserDefaults.standard.array(forKey: "selectedPlans") as? [String] ?? []
        self.selectedPlans = Set(planValue.compactMap {IntroPlan(rawValue: $0)})
    }
    
    func toggleConcern(_ concern: IntroConcern) {
        if selectedConcerns.contains(concern) {
            selectedConcerns.remove(concern)
        } else {
            selectedConcerns.insert(concern)
        }
        let rawValues = selectedConcerns.map { $0.rawValue }
        UserDefaults.standard.set(rawValues, forKey: "selectedConcerns")
    }
    
    func toggleTarget(_ target: IntroTarget) {
        if selectedTargets.contains(target) {
            selectedTargets.remove(target)
        } else {
            selectedTargets.insert(target)
        }
        let rawValues = selectedTargets.map { $0.rawValue }
        UserDefaults.standard.set(rawValues, forKey: "selectedTargets")
    }
    
    func togglePlan(_ plan: IntroPlan) {
        if selectedPlans.contains(plan) {
            selectedPlans.remove(plan)
        } else {
            selectedPlans.insert(plan)
        }
        let rawValues = selectedPlans.map { $0.rawValue }
        UserDefaults.standard.set(rawValues, forKey: "selectedPlans")
    }
    
    func updateIntroTab(_ tab: Int) {
        selectedTab = tab
        UserDefaults.standard.set(tab, forKey: "selectedTab")
    }
    
    func completeOnboarding() {
        hasCompletedOnboarding = true
        UserDefaults.standard.set(true, forKey: "hasCompletedOnboarding")
    }
}
