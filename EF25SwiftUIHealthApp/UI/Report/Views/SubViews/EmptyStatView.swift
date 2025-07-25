//
//  Untitled.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//
import SwiftUI

struct EmptyStatView: View {
    let label: String
    let value: String
    let unit: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(label)
                .font(.system(size: 14, weight: .medium))
                .foregroundStyle(.neutral3)
                .multilineTextAlignment(.leading)
            HStack(spacing: 4) {
                Text(value)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(.neutral2)
                Text(unit)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundStyle(.neutral2)
                    .padding(.top, 4)
            }
        }
    }
}


#Preview {
    EmptyView()
}
