//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/5/24.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPTERY
    let category: Category
    
    // MARK: - BODY
    
    var body: some View {
        Button (action: {}, label: {
            HStack( alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30,alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            } //: HSTACK
            .padding()
            .background(Color.white.cornerRadius(12))
            .background (RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1)
            )
        } ) //: BUTTON
    }
}

// MARK: - PREVIEW
#Preview {
    CategoryItemView(category: categories[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
