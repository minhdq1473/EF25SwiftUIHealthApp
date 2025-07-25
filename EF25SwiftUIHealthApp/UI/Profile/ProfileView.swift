//
//  ProfileView.swift
//  EF25BMISwiftUI
//
//  Created by iKame Elite Fresher 2025 on 9/7/25.
//
import SwiftUI

struct ProfileView: View {
//    let profile: Profile
//    @Environment(\.dismiss) private var dismiss
//    @State var showEditView : Bool = false
    @EnvironmentObject private var settingManager: SettingManager
    
    var body: some View {
//        NavigationStack {
//            mainView
//                .navigationBarTitleDisplayMode(.inline)
//                .navigationBarBackButtonHidden(true)
//                .background(Color.background)
//                .toolbar {
//                    ToolbarItem(placement: .principal) {
//                        NavigationTitleView(title: "Profile")
//                    }
//                    ToolbarItem(placement: .topBarLeading) {
//                        Button(action: {
//                            settingManager.popToRoot()
//                        }) {
//                            Image(systemName: "chevron.backward")
//                                .foregroundColor(.neutral2)
//                        }
//                    }
//                    
//                    ToolbarItem(placement: .topBarTrailing) {
////                        NavigationLink(destination: InformationView(profile: $profile)) {
////                            Text("Edit")
////                                .font(.system(size: 16, weight: .semibold))
////                                .foregroundStyle(.primary1)
////                        }
////                        NavigationLink(value: "InformationView") {
////                            Text("Edit")
////                                .font(.system(size: 16, weight: .semibold))
////                                .foregroundStyle(.primary1)
////                        }
//                        Button(action: {
//                            settingManager.push(to: "InformationView")
//                        }) {
//                            Text("Edit")
//                                .font(.system(size: 16, weight: .semibold))
//                                .foregroundStyle(.primary1)
//                        }
//                    }
//                }
//                .navigationDestination(item: $profileItem) { profile in
//                    InformationView(profile: profile)
//                }
//                .sheet(isPresented: $showEditView) {
        //                    InformationView(profile: $profile)
        //                }
        //        }
        mainView
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .background(Color.background)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    NavigationTitleView(title: "Profile")
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        settingManager.popToRoot()
                    }) {
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.neutral2)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        settingManager.push(to: .information)
                    }) {
                        Text("Edit")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(.primary1)
                    }
                }
            }
    }
    private var mainView: some View {
        VStack(spacing: 28) {
            if let profile = settingManager.profile {
                view1(profile: profile)
                view2(profile: profile)
            }
//            view1
//            view2
    
            Spacer()
        }
        .padding(.top, 24)
        .padding(.horizontal, 31.5)
    }
    private func view1(profile: Profile) -> some View {
        VStack(spacing: 24) {
            Circle()
                .fill(.primary1)
                .frame(width: 108, height: 108)
                .overlay(
                    Image("avatar")
                        .font(.system(size: 64))
                        .foregroundColor(.neutral5)
                )
            Text(profile.fullName)
                .font(.system(size: 36, weight: .semibold))
                .foregroundColor(.neutral15)
        }
    }
    private func view2(profile: Profile) -> some View {
        VStack(spacing: 12) {
            VStack(spacing: 12) {
                Text("Your BMI:")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.neutral1)
                Text("\(profile.bmi, specifier: "%.1f")")
                    .font(.system(size: 64, weight: .bold))
                    .foregroundColor(.good)
            }
            Divider()
                .padding(.horizontal)
                .background(.neutral3)
            HStack(spacing: 25.67) {
                InfoView(value: "\(Int(profile.weight)) kg", label: "Weight")
                InfoView(value: "\(Int(profile.height)) cm", label: "Height")
                InfoView(value: "28", label: "Age")
                    .frame(width: 27)
                InfoView(value: profile.gender.rawValue, label: "Gender")
            }
        }
        .padding()
        .background(Color.neutral5)
        .cornerRadius(20)
        
    }
}

//#Preview {
//    ProfileView(
//        profile: .constant(Profile(firstName: "Minh", lastName: "Do", gender: .male, weight: 65.0, height: 165.0))
//    )
//}


