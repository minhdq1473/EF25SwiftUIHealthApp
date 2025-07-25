//
//  NavigationTitleView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 23/7/25.
//
import SwiftUI

struct NavigationTitleView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 20, weight: .bold))
            .foregroundStyle(.neutral1)
    }
}
