//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Fang Sun on 2021-08-28.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // MARK: - NavBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // MARK: - Header
            HeaderDetailView().padding(.horizontal)
            
            // MARK: - Detail Top Part
            TopPartDetailView().padding(.horizontal)
                .zIndex(1)
            // MARK: - Detail Top Part
            VStack(alignment: .center, spacing: 0, content: {
                // MARK: - Rating + Sizes
                RatingsSizesDetailView().padding(.top,-20)
                    .padding(.bottom,10)
                
                // MARK: - Description
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ??  sampleProduct.description)
                        .font(.system(.body,design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                // MARK: - Quantity + Favourite
                QuantityFavouriteDetailView().padding(.vertical,10)
                
                // MARK: - Add to Cart
                AddToCartDetailView().padding(.bottom,20)
            })
            .padding(.horizontal)
            .background(Color.white
                            .clipShape(CustomShape())
                            .padding(.top,-105))
            
            
        })// :VStack
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(Color(
                        red: shop.selectedProduct?.red ?? sampleProduct.red,
                        green: shop.selectedProduct?.green ?? sampleProduct.green,
                        blue: shop.selectedProduct?.blue ?? sampleProduct.blue))
        .ignoresSafeArea(.all,edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
            .previewDevice("iphone 12 pro max")
    }
}
