//
//  InformationView.swift
//  EF25BMISwiftUI
//
//  Created by iKame Elite Fresher 2025 on 9/7/25.
//

import SwiftUI

public struct InformationView: View {
    //    @Binding var profile: Profile
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var selectedGender: Gender = .male
    @State private var height: String = ""
    @State private var weight: String = ""
    //    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject private var settingManager: SettingManager
    //    let editingItem: Item?
    //    private var isEditing: Bool {
    //        editingItem != nil
    //    }
    
    //    init(items: Binding<[Item]>, editingItem: Item? = nil) {
    //        self._items = items
    //        self.editingItem = editingItem
    //
    //        if let item = editingItem {
    //            self._firstName = State(initialValue: item.firstName)
    //            self._lastName = State(initialValue: item.lastName)
    //            self._selectedGender = State(initialValue: item.gender)
    //            self._weight = State(initialValue: String(item.weight))
    //            self._height = State(initialValue: String(item.height))
    //        } else {
    //            self._firstName = State(initialValue: "")
    //            self._lastName = State(initialValue: "")
    //            self._selectedGender = State(initialValue: .male)
    //            self._weight = State(initialValue: "")
    //            self._height = State(initialValue: "")
    //        }
    //    }
    
    public var body: some View {
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
            
            Button(action: {
                saveProfile()
            }) {
                ButtonView(buttonTitle: "Save", isEnable: !firstName.isEmpty && !lastName.isEmpty && !height.isEmpty && !weight.isEmpty)
            }
            
        }
        .padding(.horizontal, 15.5)
        .padding(.top, 24)
        .background(Color.background)
        
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Information")
        .toolbar {
            ToolbarItem(placement: .principal) {
                NavigationTitleView(title: "Information")
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    //                    dismiss()
                    settingManager.pop()
                }) {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.neutral2)
                }
            }
        }
        .onAppear {
            loadProfile()
        }
    }
    private func loadProfile() {
        if let existingProfile = settingManager.profile {
            firstName = existingProfile.firstName
            lastName = existingProfile.lastName
            selectedGender = existingProfile.gender
            weight = String(existingProfile.weight)
            height = String(existingProfile.height)
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
        //        dismiss()
    }
}

#Preview {
    //    InformationView(items: .constant([
    //        Item(firstName: "Minh", lastName: "Do", gender: .male, weight: 65.0, height: 165.0)
    //    ]), editingItem: nil)
    NavigationStack {
        //            InformationView(profile: .constant(nil))
        InformationView()
            .environmentObject(SettingManager())
    }
}
