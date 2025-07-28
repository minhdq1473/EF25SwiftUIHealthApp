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
            HStack(spacing: 12) {
                InputView(input: $pulse, label: "Pulse", placeholder: "Enter your pulse")
                InputView(input: $hrv, label: "HRV", placeholder: "Enter your HRV")
            }
            Spacer()
            
            ButtonView(buttonAction: {
                addStat()
                dismiss()
            }, buttonTitle: "Add", isEnable: isValidInput)
        }
        .padding(.top, 24)
        .padding(.horizontal, 16)
        .background(Color.background)
    }
    
    private var dismissButton: some View {
        Button(action: {
            dismiss()
        }) {
            Image("icClose")
        }
        
    }
    
    private func addStat() {
        guard let pulseValue = Int(pulse), let hrvValue = Int(hrv) else {return}
        
        let newStat = ReportStat(pulse: pulseValue, hrv: hrvValue)
        report.append(newStat)
    }
    
    private var isValidInput: Bool {
        guard let pulseValue = Int(pulse), let hrvValue = Int(hrv) else {return false}
        return !pulse.isEmpty && !hrv.isEmpty && (0...200).contains(pulseValue) && (0...200).contains(hrvValue)
    }
    
    
}
#Preview {
    LogView(report: .constant([
        ReportStat(pulse: 120, hrv: 100)
    ]))
}

