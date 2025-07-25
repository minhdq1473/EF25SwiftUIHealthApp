//
//  IntroItem.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 19/7/25.
//

import Foundation
import SwiftUI

enum IntroIssue: String {
    case  heartRate = "Heart Rate",
          highBlood = "High Blood Pressure",
          stress = "Stress & Anxiety",
          lowEnergy = "Low Energy Levels"
    
    var imageName: String {
        switch self {
        case .heartRate:
            return "heart-rate"
        case .highBlood:
            return "hypertension"
        case .stress:
            return "stress"
        case .lowEnergy:
            return "energy"
        }
    }
}
enum IntroAchieve: String {
    case  improveHeartHealth = "Improve Heart Health",
          improveBPHealth = "Improve Blood Pressure Health",
          reduceStress = "Reduce Stress",
          increaseEnergy = "Increase Energy Levels"
    
    var imageName: String {
        switch self {
        case .improveHeartHealth:
            return "dumbbell"
        case .improveBPHealth:
            return "pressure"
        case .reduceStress:
            return "harmony"
        case .increaseEnergy:
            return "energy-up"
        }
    }
}

enum IntroPlan: String {
    case  educationPlan = "Education Plan",
          exercisePlan = "Exercise Plan",
          healthTest = "Health Tests"
    
    var imageName: String {
        switch self {
        case .educationPlan:
            return "plan"
        case .exercisePlan:
            return "exercise-plan"
        case .healthTest:
            return "stress-test"
        }
    }
}
