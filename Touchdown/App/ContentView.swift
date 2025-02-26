
//  Touchdown
//
//  Created by Ryan Williams on 2/5/24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                if shop.showingProduct == false && shop.selectedProduct == nil {
                    VStack (spacing: 0) {
                        
                        NavigationBarView()
                            .padding(.horizontal, 15)
                            .padding(.bottom)
                            .padding(.top,UIApplication.shared.connectedScenes.compactMap { $0 as? UIWindowScene }
                                .first?
                                .windows
                                .first?
                                .safeAreaInsets.top ?? 0 )
                            .background(Color.white)
                            .shadow(color: Color.black .opacity (0.05), radius: 5, x: 0, y: 5)
                        
                        ScrollView(.vertical, showsIndicators: false, content: {
                            VStack() {
                                FeaturedTabView ()
                                    .padding(.vertical)
                                    .frame(height: UIScreen.main.bounds.width/1.475)
                                
                                CategoryGridView()
                                
                                TitleView(title: "Helmets")
                                
                                LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                    ForEach (products) { product in
                                        ProductItemView(product: product)
                                            .onTapGesture {
                                                feedback.impactOccurred()
                                                
                                                withAnimation(.easeOut) {
                                                    shop.selectedProduct = product
                                                    shop.showingProduct = true
                                                    
                                                    
                                                }
                                            }
                                    } //: LOOP
                                }) // GRID
                                .padding(15)
                                
                                TitleView(title: "Brands")
                                
                                BrandGridView()
                                
                                FooterView()
                                    .padding(.horizontal)
                            } //: VSTACK
                        }) //: SCROLL
                        
                    } //: VSATCK
                    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                } else {
                    ProductDetailView()
                        .padding(.top,30)
                }
            }
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}
// MARK: - PREVIEW
#Preview {
    
    ContentView()
        .environmentObject(Shop())
}
