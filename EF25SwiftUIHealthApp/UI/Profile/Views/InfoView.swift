//
//  StatView.swift
//  EF25BMISwiftUI
//
//  Created by iKame Elite Fresher 2025 on 11/7/25.
//

import SwiftUI

struct InfoView: View {
    let value: String
    let label: String
    
    var body: some View {
        VStack(spacing: 4) {
            Text(value)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.good)
            
            Text(label)
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
    }
}
