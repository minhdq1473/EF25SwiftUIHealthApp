//
//  ReportStatView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 23/7/25.
//

import SwiftUI

struct ReportStatView: View {
    let label: String
    let value: String
    let unit: String
    let color: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(label)
                .font(.system(size: 14, weight: .medium))
                .foregroundStyle(.neutral3)
            HStack(spacing: 4) {
                Text(value)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(color)

                Text(unit)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundStyle(color)
                    .padding(.top, 4)
            }
//            .frame(maxWidth: 90)
        }
    }
}

#Preview {
    ReportListView(report: .constant([ReportStat(pulse: 12, hrv: 12), ReportStat(pulse: 122, hrv: 122)
                                     ]))
}
