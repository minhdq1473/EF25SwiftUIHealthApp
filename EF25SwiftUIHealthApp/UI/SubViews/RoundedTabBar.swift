//
//  RoundedTabBar.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 27/7/25.
//

import SwiftUI

struct RoundedTabBar: Shape {
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//        
//        let radius: CGFloat = 20
//        
//        path.move(to: CGPoint(x: 0, y: radius))
//        path.addQuadCurve(to: CGPoint(x: radius, y: 0), control: CGPoint(x: 0, y: 0))
//        path.addLine(to: CGPoint(x: rect.width - radius, y: 0))
//        path.addQuadCurve(to: CGPoint(x: rect.width, y: radius), control: CGPoint(x: rect.width, y: 0))
//        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
//        path.addLine(to: CGPoint(x: 0, y: rect.height))
//        path.closeSubpath()
//        
//        return path
//    }
    
    let radius: CGFloat = 20
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: radius))
        path.addQuadCurve(to: CGPoint(x: radius, y: 0), controlPoint: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width - radius, y: 0))
        path.addQuadCurve(to: CGPoint(x: rect.width, y: radius), controlPoint: CGPoint(x: rect.width, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.close()
        
        return Path(path.cgPath)
    }
}


