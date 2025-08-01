//
//  IntroItemConcern.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 25/7/25.
//
import SwiftUI
struct IntroConcernView: View {
    var concern: IntroConcern
    var isSelected: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack() {
                isSelected ? Image("filled-checkbox") : Image("empty-checkbox")
            }
            .padding(.leading, 16)
            .padding(.top, 16)
            
            Image(concern.imageName)
                .frame(maxWidth: .infinity)
                .padding(.top, 8)
            //                .resizable()
            //                    .frame(maxWidth: 64, maxHeight: 64, alignment: .center)
            Spacer()
            ItemTextView(title: concern.rawValue)

            
        
        }
        .frame(width: (UIScreen.main.bounds.width - 48) / 2, height: 195)
        .background(Color.neutral5)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(isSelected ? Color.primary1 : Color.clear, lineWidth: 1.5)
        )
        
    }
}
