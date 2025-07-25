//
//  OpeningView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//
import SwiftUI

struct OpeningView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("Health Plan Pro")
                .font(.system(size: 26, weight: .bold))
                .foregroundStyle(.neutral1)
            Text("Providing workout routines and health\ninformation to support well-being.")
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.neutral3)
                .multilineTextAlignment(.center)
                .lineSpacing(4)
        }
        .padding(.vertical, 36)
        Image("healthplanpro")
            .resizable()
            .scaledToFit()
            .padding(.horizontal, 31)
        Spacer()
    }
}
 
#Preview {
    OpeningView()
}
