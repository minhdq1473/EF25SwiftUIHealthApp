//
//  ButtonView.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 21/7/25.
//
import SwiftUI

struct ButtonView: View {
    let buttonAction: () -> Void
    let buttonTitle: String
    let isEnable: Bool

    
    var body: some View {
        Button(action: buttonAction) {
            Text(buttonTitle)
                .font(.system(size: 18, weight: .semibold))
                .frame(maxWidth: .infinity, maxHeight: 56)
                .foregroundColor(.white)
                .background(isEnable ? Color.primary1 : Color.neutral3 )
                .cornerRadius(16)
                .padding(.bottom, 16)
        }
        .disabled(!isEnable)
    }
}
