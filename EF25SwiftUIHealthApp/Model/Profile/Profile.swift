//
//  Profile.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 19/7/25.
//
import Foundation

enum Gender: String, Codable, CaseIterable {
    case male = "Male"
    case female = "Female"
}

struct Profile: Identifiable, Hashable {
    var id = UUID()
    let firstName: String
    let lastName: String
    let gender: Gender
    let weight: Double
    let height: Double
    var fullName: String {
        firstName + " " + lastName
    }
    var bmi: Double {
        weight / pow(height / 100, 2)
    }
    
    init(id: UUID = UUID(), firstName: String, lastName: String, gender: Gender, weight: Double, height: Double) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.weight = weight
        self.height = height
    }
}


