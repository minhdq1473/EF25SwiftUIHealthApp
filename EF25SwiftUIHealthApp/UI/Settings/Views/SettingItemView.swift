//
//  SettingItemView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 22/7/25.
//
import SwiftUI

struct SettingItemView: View {
    let item: SettingItem

    var body: some View {
        HStack(spacing: 12) {
            Image(item.iconName)
            Text(item.rawValue)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.neutral1)
            Spacer()
            Image(.right)
        }
        .padding()
        .background(.neutral5)
    }
}

#Preview {
    SettingItemView(item: .profile)
}

//#Preview {
//    SettingsView()
//}
