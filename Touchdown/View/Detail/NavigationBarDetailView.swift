//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/7/24.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    // MARK: - PROPTERY
    
    @ EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()

                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
                
            })
        }//: Hstack
    }
}

#Preview {
    NavigationBarDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray)
}
