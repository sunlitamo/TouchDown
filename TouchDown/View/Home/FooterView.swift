//
//  FooterView.swift
//  TouchDown
//
//  Created by Fang Sun on 2021-08-22.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment:.center,spacing:10) {
            Text("WE OFFER THE MOST CUTTING EDGE, COMFORTABLE, LIGHTWEIGHT AND DURABLE FOOTBALL HELMETS IN THE MARKET AT AFFORDABLE PRICES.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("ALL RIGHT RESERVED")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }//: VSTACK
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
