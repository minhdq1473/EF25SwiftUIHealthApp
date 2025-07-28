//
//  HomeTitleView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 26/7/25.
//
import SwiftUI

struct HomeTitleView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 32, weight: .semibold))
            .foregroundStyle(.neutral1)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 16)
    }
}
