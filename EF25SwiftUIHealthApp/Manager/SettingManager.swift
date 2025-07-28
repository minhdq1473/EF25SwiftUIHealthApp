//
//  SettingManager.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 24/7/25.
//
import SwiftUI
//class Router: Identifiable, ObservableObject {
//    var id: String
//    @Published var isShow: Bool = false
//    
//    init(id: String, isShow: Bool) {
//        self.id = id
//        self.isShow = isShow
//    }
//}
enum RoutingTag: String, Hashable {
    case information
    case profile
    case root 
}

class SettingManager: ObservableObject {
    @Published var profile: Profile?
    @Published var navigationPath = NavigationPath() 
    private var routes: [RoutingTag] = []
    
    func push(to id: RoutingTag) {
        routes.append(id)
        navigationPath.append(id)
    }
    
    func pop() {
        routes.removeLast()
        navigationPath.removeLast()
    }
    
    func popToRoot() {
        routes = []
        navigationPath.removeLast(navigationPath.count)
    }
    
    func saveProfile(_ newProfile: Profile) {
        profile = newProfile
    }
}
