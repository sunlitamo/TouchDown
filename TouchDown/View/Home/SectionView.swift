//
//  SectionView.swift
//  TouchDown
//
//  Created by Fang Sun on 2021-08-26.
//

import SwiftUI

struct SectionView: View {
    
    @State var rotateClockwise:Bool
    var body: some View {
        VStack(spacing:0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }
        .background(colorGray.cornerRadius(12))
        .frame(width:85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 260))
            .padding()
            .background(colorBackground)
            .previewDevice("iPhone 8")
    }
}