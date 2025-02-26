//
//  CustomShape.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/7/24.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    
    }
    // MARK: - PROPTERY
    
    
    // MARK: - BODY

}
// MARK: - PREVIEW
#Preview {
    CustomShape()
}
