//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by Fang Sun on 2021-08-26.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) {
                player in
                FeatureItemView(player: player)
                    .padding(.top,10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 12 Pro")
            .background(Color.gray)
    }
}
