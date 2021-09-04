//
//  FeatureItemView.swift
//  TouchDown
//
//  Created by Fang Sun on 2021-08-26.
//

import SwiftUI

struct FeatureItemView: View {
    // Mark: - Property
    
    let player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeatureItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
