//
//  TitleView.swift
//  TouchDown
//
//  Created by Fang Sun on 2021-08-26.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }// :HSTACK
        .padding(.horizontal)
        .padding(.top,15)
        .padding(.bottom,20)
    }
   
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
