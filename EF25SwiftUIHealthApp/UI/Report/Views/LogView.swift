//
//  LogView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 22/7/25.
//

import SwiftUI

struct LogView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var report: [ReportStat]
    @State private var pulse: String = ""
    @State private var hrv: String = ""
    
    var body: some View {
        NavigationStack {
            mainView
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        dismissButton
                    }
                    ToolbarItem(placement: .principal) {
                        NavigationTitleView(title: "Information")
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
        }
        
        
        
    }
    private var mainView: some View {
        VStack {
//            Text("Information")
//                .font(.system(size: 20, weight: .bold))
//                .foregroundStyle(.neutral1)
//                .padding(.bottom, 12)
            
            HStack(spacing: 12) {
                InputView(input: $pulse, label: "Pulse", placeholder: "Enter your pulse")
                InputView(input: $hrv, label: "HRV", placeholder: "Enter your HRV")
            }
            
            Spacer()
            
            Button(action: {
                addStat()
                dismiss()
            }) {
                buttonView
                    .padding(.bottom, 16)
            }
        }
        .padding(.top, 24)
        .padding(.horizontal, 16)
        .background(Color.background)
    }
    
    private var dismissButton: some View {
        Button(action: {
            dismiss()
        }) {
            Image(systemName: "xmark")
                .foregroundColor(.neutral2)
        }
        
    }
    
    private var buttonView: some View {
        ButtonView(buttonTitle: "Add", isEnable: !pulse.isEmpty && !hrv.isEmpty)
        }
    
    private func addStat() {
        guard let pulseValue = Int(pulse), let hrvValue = Int(hrv) else {return}
        
        let newStat = ReportStat(pulse: pulseValue, hrv: hrvValue)
        report.append(newStat)
    }
    
    
}
#Preview {
    LogView(report: .constant([
        ReportStat(pulse: 120, hrv: 100)
    ]))
}

