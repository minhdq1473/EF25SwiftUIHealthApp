//
//  Report.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 22/7/25.
//

import Foundation
import SwiftUI

struct ReportStat: Hashable {
    let pulse: Int
    let hrv: Int
    var status: Status {
        switch pulse {
        case ..<60:
            return .low
        case 60...100:
            return .good
        default:
            return .warning
        }
    }
}

enum Status: String {
    case good = "Good"
    case low = "Low"
    case warning = "Warning"
    
    var color: UIColor {
        switch self {
        case .good:
            return #colorLiteral(red: 0.3333333333, green: 0.6392156863, blue: 0.3176470588, alpha: 1)
        case .low:
            return #colorLiteral(red: 0.2705882353, green: 0.6784313725, blue: 0.6901960784, alpha: 1)
        case .warning:
            return #colorLiteral(red: 0.9254901961, green: 0.7019607843, blue: 0.2666666667, alpha: 1)
        }
    }
}
