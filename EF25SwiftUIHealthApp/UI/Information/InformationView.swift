//
//  InformationView.swift
//  EF25BMISwiftUI
//
//  Created by iKame Elite Fresher 2025 on 9/7/25.
//

import SwiftUI

struct InformationView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var selectedGender: Gender = .male
    @State private var height: String = ""
    @State private var weight: String = ""
    @EnvironmentObject private var settingManager: SettingManager
  
    
    var body: some View {
        mainView
            .padding(.horizontal, 15.5)
            .padding(.top, 24)
            .background(Color.background)
            .navigationBarBackButtonHidden()
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Information")
            .toolbar {
                ToolbarItem(placement: .principal) {
                    NavigationTitleView(title: "Information")
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                    settingManager.pop()
                }) {
                    Image("icLeft")
                }
            }
        }
        .onAppear {
            loadProfile()
        }
    }
    
    private var mainView: some View {
        VStack(spacing: 21) {
            HStack (spacing: 12) {
                InputView(input: $firstName, label: "First name", placeholder: "Enter first name")
                InputView(input: $lastName, label: "Last name", placeholder: "Enter last name")
            }
            
            VStack(alignment: .leading, spacing: 12) {
                Text("Gender")
                    .font(.system(size: 16))
                Picker(selection: $selectedGender, label: Text("Gender")) {
                    ForEach(Gender.allCases, id: \.self) { gender in
                        Text(gender.rawValue).tag(gender)
                    }
                }
                .pickerStyle(.segmented)
            }
            
            HStack (spacing: 12) {
                InputView(input: $weight, label: "Weight", placeholder: "Kg")
                InputView(input: $height, label: "Height", placeholder: "Cm")
            }
            
            Spacer()
            
            ButtonView(buttonAction: saveProfile, buttonTitle: "Save", isEnable: isValidInput)
        }
    }
    
    private func loadProfile() {
        if let existingProfile = settingManager.profile {
            firstName = existingProfile.firstName
            lastName = existingProfile.lastName
            selectedGender = existingProfile.gender
            weight = String(Int(existingProfile.weight))
            height = String(Int(existingProfile.height))
        }
    }
    
    private func saveProfile() {
        guard let weightValue = Double(weight),
              let heightValue = Double(height) else {return}
        
        let newProfile = Profile(
            firstName: self.firstName,
            lastName: self.lastName,
            gender: selectedGender,
            weight: weightValue,
            height: heightValue
        )
        settingManager.profile = newProfile
        settingManager.push(to: .profile)
    }
    
    private var isValidInput: Bool {
        guard let heightValue = Int(height), let weightValue = Int(weight) else {return false}
        return !firstName.isEmpty && !lastName.isEmpty && !height.isEmpty && !weight.isEmpty && (0...300).contains(heightValue) && (0...400).contains(weightValue)
    }
}

#Preview {
    NavigationStack {
        InformationView()
            .environmentObject(SettingManager())
    }
}
