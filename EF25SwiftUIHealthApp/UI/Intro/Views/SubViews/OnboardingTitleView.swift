//
//  OnboardingTitleView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 25/7/25.
//

import SwiftUI

struct OnboardingTitleView: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.system(size: 26, weight: .bold))
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.top, 64)
            .padding(.bottom, 24)
            .padding(.horizontal, 17)
            .multilineTextAlignment(.center)
    }
}
