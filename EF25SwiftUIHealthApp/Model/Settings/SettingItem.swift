//
//  SettingItems.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 22/7/25.
//

import SwiftUI

enum SettingItem: String, CaseIterable {
    case profile = "Profile",
         dailyRememer = "Daily Rememer",
         changeIc = "Change App Icon",
         language = "Language",
         rateUs = "Rate Us",
         feedback = "Feedback",
         privacyPolicy = "Privacy Policy",
         term = "Term Of User"
    
    var iconName: String {
        switch self {
        case .profile: return "profile"
        case .dailyRememer: return "notification"
        case .changeIc: return "category"
        case .language: return "website"
        case .rateUs: return "like"
        case .feedback: return "message"
        case .privacyPolicy: return "shield"
        case .term: return "document"
        }
    }
}
