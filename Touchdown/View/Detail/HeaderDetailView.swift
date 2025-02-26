//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/7/24.
//

import SwiftUI

struct HeaderDetailView: View {
    
    // MARK: - PROPTERY
    @EnvironmentObject var shop: Shop
    // MARK: - BODY
    var body: some View {
        VStack (alignment:.leading, spacing:6, content: {
        Text("Protective Gear")
        
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
            .font(.largeTitle)
            .fontWeight(.black)
            
        }) //: VSTACK
        .foregroundColor(.white)
    }
}
// MARK: - PREVIEW
#Preview {
    HeaderDetailView()
        .background(Color.gray)
        .environmentObject(Shop())
}
