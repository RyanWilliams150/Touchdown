//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/6/24.
//

import SwiftUI

struct ProductItemView: View {
    
    // MARK: - PROPTERY
    let product: Product
    
    // MARK: - BODY
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            // PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZSTACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // PRICE
            Text (product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }) //: VSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    ProductItemView(product: products[0])
}
