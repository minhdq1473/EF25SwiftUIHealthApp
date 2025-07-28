//
//  Item.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 27/7/25.
//

import SwiftUI

struct ItemTextView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 18, weight: .regular))
            .foregroundStyle(.neutral2)
            .padding(.horizontal, 16)
            .padding(.bottom, 16)
            .frame(maxWidth: .infinity, alignment: .leading)
            .lineSpacing(4)
            .lineLimit(2)
//            .multilineTextAlignment(.leading)
    }
}
