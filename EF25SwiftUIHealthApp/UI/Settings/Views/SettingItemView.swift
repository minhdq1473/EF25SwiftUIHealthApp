//
//  SettingItemView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 22/7/25.
//
import SwiftUI

struct SettingItemView: View {
    var item: SettingItem

    var body: some View {
        HStack(spacing: 12) {
            Image(item.iconName)
            Text(item.rawValue)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.neutral1)
            Spacer()
            Image(.right)
        }
        .padding(.vertical, 7)
        .background(.neutral5)
    }
}

#Preview {
    SettingItemView(item: .allCases[0])
}

//#Preview {
//    SettingsView()
//}
