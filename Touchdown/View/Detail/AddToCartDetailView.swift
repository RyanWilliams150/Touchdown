//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/7/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    // MARK: - PROPTERY
    @ EnvironmentObject var shop: Shop
    // MARK: - BODY
    var body: some View {
        Button(action: {
            feedback.impactOccurred()

        }, label: {
            Spacer()
            Text("Add To Cart")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }) //: BUTTON
        .padding(15)
        .background(
        Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
        green: shop.selectedProduct?.green ?? sampleProduct.green,
        blue: shop.selectedProduct?.blue ?? sampleProduct.blue
        )
       )
        .clipShape(Capsule())
    }
}
// MARK: - PREVIEW
#Preview {
    AddToCartDetailView()
        .environmentObject(Shop())
}
