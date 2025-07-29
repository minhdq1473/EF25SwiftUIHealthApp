//
//  RoundedTabBar.swift
//  EF25SwiftUIHealthApp
//
//  Created by iKame Elite Fresher 2025 on 27/7/25.
//

import SwiftUI
struct RoundedTabBar: View {
    @Binding var selectedTab: Int
    let tabItems: [TabItem]

    
    var body: some View {
        ZStack {
//            RoundedRectangle(cornerRadius: 20)
//                .fill(Color.white)
            HStack(spacing: 0) {
                ForEach(0..<tabItems.count, id: \.self) { index in
                    Button(action: {
//                        withAnimation {
                            selectedTab = index
//                        }
                    }) {
                        VStack(spacing: 0) {
                            selectedTab == index ? Image(tabItems[index].selectedIc) : Image(tabItems[index].unselectedIc)
                          
                            Text(tabItems[index].title)
                                .font(.system(size: 14, weight: .regular))
                                .foregroundColor(selectedTab == index ? .primary1 : .neutral4)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.top, 6)
                        .padding(.bottom, 26)
                    }
                }
            }
        }
        .frame(height: 80)
       
    }
    
    
        
}

//struct RoundedTabBar: Shape {
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
    
//    let radius: CGFloat = 20
//    
//    func path(in rect: CGRect) -> Path {
//        let path = UIBezierPath()
//        path.move(to: CGPoint(x: 0, y: radius))
//        path.addQuadCurve(to: CGPoint(x: radius, y: 0), controlPoint: CGPoint(x: 0, y: 0))
//        path.addLine(to: CGPoint(x: rect.width - radius, y: 0))
//        path.addQuadCurve(to: CGPoint(x: rect.width, y: radius), controlPoint: CGPoint(x: rect.width, y: 0))
//        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
//        path.addLine(to: CGPoint(x: 0, y: rect.height))
//        path.close()
//        
//        return Path(path.cgPath)
//    }
//}


