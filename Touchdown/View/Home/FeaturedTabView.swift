//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/5/24.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
            FeaturedItemView(player: player)}
            .padding(.top, 10)
            .padding(.horizontal, 15)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    FeaturedTabView()
        .background(Color.gray)
}
