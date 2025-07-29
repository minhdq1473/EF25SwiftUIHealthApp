//
//  Untitled.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 29/7/25.
//

struct TabItem {
    let title: String
    let selectedIc: String
    let unselectedIc: String
    
    static let allCases: [TabItem] = [
        TabItem(title: "Report", selectedIc: "colored-chart", unselectedIc: "chart"),
        TabItem(title: "Settings", selectedIc: "colored-setting", unselectedIc: "setting")
    ]
}
