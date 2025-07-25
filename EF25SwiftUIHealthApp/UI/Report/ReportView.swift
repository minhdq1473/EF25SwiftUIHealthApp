//
//  ReportView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 18/7/25.
//

import SwiftUI

struct ReportView: View {
    @State var isPresent: Bool = false
    @State var report: [ReportStat] = []
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing: 0) {
            titleView
            buttonView
            
            
//            EmptyView()
            if report.isEmpty {
                EmptyView()
            } else {
                ReportListView(report: $report)
            }
//            report.isEmpty ? EmptyView() : ReportListView(report: $report)
            
        }
        .background(Color.background)
        .fullScreenCover(isPresented: $isPresent) {
            LogView(report: $report)
        }
        //        .sheet(isPresented: $isPresent) {
//            LogView(report: $report)
//        }

    }
    var  titleView: some View {
        Text("Health Guru")
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: 32, weight: .semibold))
            .padding(.leading, 16)
    }
    
    var buttonView: some View {
        Image("full-heart")
            .padding(.top, 65)
            .padding(.bottom, 69)
            .onTapGesture {
                isPresent = true
            }
    }
    
//    var reportView: some View {
//        List(report, id: \.self) { value in
//            ReportCellView(reportStat: value)
//        }
//    }

}

#Preview {
    ReportView()
}
