//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/7/24.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPTERY
    @EnvironmentObject var shop: Shop
    // MARK: - BODY
    
    var body: some View {
        // New Solution
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 5, content: {
                // NAVBAR
                NavigationBarDetailView()
                    .padding(.horizontal)
                    .padding(.top, geometry.safeAreaInsets.top)
                
                // ** outdated solution in lesson **
                //            NavigationBarView()
                //                .padding(.horizontal)
                //                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                // HEADER
                HeaderDetailView()
                    .padding(.horizontal)
                
                // DETAIL TOP
                TopPartDetailView()
                    .padding(.horizontal)
                    .zIndex(1)
                // DETAIL BOTTOM
                VStack (alignment: .center, spacing: 0 , content: {
                    
                    // RAITINGS + SIZES
                    RatingsSizesDetailView()
                        .padding(.top, -20)
                        .padding(.bottom, 10)
                    // DESCRIPTION
                    ScrollView(.vertical, showsIndicators: false, content: {
                        Text(shop.selectedProduct?.description ?? 
                             sampleProduct.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                        
                    }) //: SCROLL
                    
                    // QUANTITY + FAVE
                    QuanityFavoriteDetailView()
                        .padding(.vertical, 10)
                    // ADD TO CART
                    AddToCartDetailView()
                        .padding(.bottom, 20)
                }) //: VSTACK
                .padding(.horizontal)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -105)
                )
            }) //: VSTACK
            .zIndex(0)
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(
                    red: shop.selectedProduct?.red ?? sampleProduct.red,
                    green: shop.selectedProduct?.green ?? sampleProduct.green,
                    blue: shop.selectedProduct?.blue ?? sampleProduct.blue
                ).ignoresSafeArea(.all, edges: .all)
            )
        } //: GeometyReader
    }
}
// MARK: - PREVIEW
#Preview {
    ProductDetailView()
        .environmentObject(Shop())
        
}
