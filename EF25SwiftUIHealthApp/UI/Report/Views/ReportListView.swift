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
                HStack(spacing: 0) {
                    ReportStatView(label: "Pulse", value: String(reportStat.pulse), unit: "bpm", color: Color(reportStat.status.color))
                        .frame(width: 90, alignment: .leading)

                    ReportStatView(label: "HRV", value: String(reportStat.hrv), unit: "bpm", color: Color(reportStat.status.color))
                        .frame(width: 90, alignment: .leading)

                    ReportStatView(label: "Status", value: String(reportStat.status.rawValue), unit: "",  color: Color(reportStat.status.color))
                        .frame(width: 76, alignment: .leading)

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
    ReportListView(report: .constant([ReportStat(pulse: 12, hrv: 12), ReportStat(pulse: 122, hrv: 122),ReportStat(pulse: 80, hrv: 80)
                                     ]))
}
