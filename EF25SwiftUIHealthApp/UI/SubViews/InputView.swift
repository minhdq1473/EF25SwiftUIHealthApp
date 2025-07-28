//
//  TextView.swift
//  EF25BMISwiftUI
//
//  Created by iKame Elite Fresher 2025 on 11/7/25.
//

import SwiftUI

struct InputView: View {
    @Binding var input: String
    let label: String
    let placeholder: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.system(size: 16, weight: .medium))
                .padding(.bottom, 12)
                .foregroundColor(.neutral15)
            TextField(placeholder, text: $input)
//            TextField(placeholder, text: .init(get: {
//                input
//            }, set: { newValue in
//                if Int(newValue) != nil {
//                    input = newValue
//                }
//            }))
                .font(.system(size: 16, weight: .regular))
                .padding(12)
                .frame(maxWidth: .infinity, maxHeight: 52)
                .background(Color.neutral5)
                .cornerRadius(16)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.neutral4, lineWidth: 1)
                        .background(Color.clear)
                )
        }
    }
}

#Preview {
    LogView(report: .constant([
        ReportStat(pulse: 120, hrv: 100)
    ]))
}



