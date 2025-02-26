//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/7/24.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    
    // MARK: - PROPTERY
    let sizes: [String] = [ "XS", "S", "M", "L", "XL" ]
    
    // MARK: - BODY
    var body: some View {
        HStack (alignment: .top, spacing: 3, content: {
            // RATINGS
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
                
                HStack(alignment: .center, spacing: 3 ,content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame (width: 28, height: 28, alignment: .center)
                                .background(Color.gray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                })
            })
            Spacer()
            
            // Sizes
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
                
                HStack (alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button (action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.gray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.gray, lineWidth: 2))
                        })}
                })
            }) //: VSTACK
        }) //: HSTACK
    }
}
// MARK: - PREVIEWS
#Preview {
    RatingsSizesDetailView()
}
