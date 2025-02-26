//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/7/24.
//

import SwiftUI

struct BrandItemView: View {
    
    // MARK: - PROPTERY
    let brand: Brand
    
    // MARK: - BODY
    
    
    var body: some View {
        Image (brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background( RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}

// MARK: - PREVIEW
#Preview {
    BrandItemView(brand: brands[0])
}
