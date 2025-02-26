//
//  SectionIView.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/5/24.
//

import SwiftUI

struct SectionView: View {
    
    // MARK: - PROPTERY
    
    @State var rotateClockwise: Bool
    
    // MARK: - BODY
    var body: some View {
        VStack (spacing: 0){
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        } //: VSTACK
        .background(Color.gray.cornerRadius (12))
        .frame(width: 85)
    }
}
// MARK: - PREVIEWS
#Preview {
    SectionView(rotateClockwise: false)
        .previewLayout(.fixed(width: 120, height: 240))
        .padding()
        .background(colorBackground)
}
