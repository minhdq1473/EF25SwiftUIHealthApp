//
//  ReportCellView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 23/7/25.
//
import SwiftUI

struct ReportListView: View {
    @Binding var report: [ReportStat]

    var body: some View {
        List(report, id: \.self) { reportStat in
            HStack(spacing: 13) {
                Image("mini-heart")
                //                    .padding(.leading, 12)
                HStack(spacing: 27) {
                    ReportStatView(label: "Pulse", value: String(reportStat.pulse), unit: "bpm", color: Color(reportStat.status.color))
                    
                    ReportStatView(label: "HRV", value: String(reportStat.hrv), unit: "bpm", color: Color(reportStat.status.color))
                    
                    ReportStatView(label: "Status", value: String(reportStat.status.rawValue), unit: "",  color: Color(reportStat.status.color))
                }
                Spacer()
            }
            .listRowInsets(EdgeInsets())
            .listRowBackground(Color.clear)
            .padding(12)
            .background(.neutral5)
            .cornerRadius(16)
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .padding()
        .scrollContentBackground(.hidden)
        .background(Color.background)
        .listRowSpacing(12)
        .scrollIndicators(.hidden)
        
    }
}

#Preview {
    ReportListView(report: .constant([ReportStat(pulse: 12, hrv: 12), ReportStat(pulse: 121, hrv: 12)
                                     ]))
}
