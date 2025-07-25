//
//  EmptyView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//
import SwiftUI

struct EmptyView: View {
    var body: some View {
        VStack(spacing: 24) {
            blankView
            instructView
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.background)
    }
    
    var blankView: some View {
        HStack(spacing: 13) {
            Image("mini-heart")
                .padding(.leading, 12)
            HStack(spacing: 27) {
                EmptyStatView(label: "Pulse", value: "--", unit: "bpm")
                EmptyStatView(label: "HRV", value: "--", unit: "bpm")
                EmptyStatView(label: "Status", value: "--", unit: "")
            }
            Spacer()
        }
        .padding(.vertical, 12)
        .frame(maxWidth: .infinity, maxHeight: 80)
        .background(.neutral5)
        .cornerRadius(16)
        .padding(.horizontal, 16)
    }
    
    var instructView: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                HStack(alignment: .center, spacing: 4) {
                    Image("like-heart")
                        .frame(width: 28, height: 28)
                    Text("Track daily")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundStyle(.neutral1)
                        .padding(.bottom, 4)
                }
                Text("Click heart icon to log your data")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(.neutral2)
            }
            Spacer()
        }
        .padding(.leading, 16)
        .padding(.vertical, 16)
        .frame(maxWidth: .infinity, maxHeight: 80)
        .background(.neutral5)
        .cornerRadius(16)
        .padding(.horizontal, 16)
    }
    
    
}

#Preview {
    EmptyView()
}
