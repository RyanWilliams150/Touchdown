//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/7/24.
//

import SwiftUI

struct BrandGridView: View {
    
    // MARK: - PROPTERY
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid (rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            }) //: GRID
            .frame(height: 200)
            .padding (15)
        }) //: SCROLL
    }
}
// MARK: - PREVIEW
#Preview {
    BrandGridView()
}
