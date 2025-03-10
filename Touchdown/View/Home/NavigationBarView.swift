//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/5/24.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPERTIES
    @State private var isAnimated: Bool = false
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button (action: {}, label: {
                Image(systemName: "magnifyingglass")
                .font(.title)
                .foregroundColor(.black)
            }) //: BUTTON
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0 )
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                 
                } )
            
            Spacer()
            
            Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset (x: 13, y: -10)
                }
            }) //: BUTTON
        } //: HSTACk
    }
}
// MARK: -  PREVIEW
#Preview {
    NavigationBarView()
        .previewLayout(.sizeThatFits)
        .padding()
}
