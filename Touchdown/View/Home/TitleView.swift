//
//  TitleView.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/6/24.
//

import SwiftUI

struct TitleView: View {
    // MARK: - PREVIEW
    var title: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        } //: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

// MARK: - PREVIEW
#Preview {
    TitleView(title: "Helmet")
}
