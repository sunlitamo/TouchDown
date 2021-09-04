//
//  ContentView.swift
//  TouchDown
//
//  Created by Fang Sun on 2021-08-22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal,15)
                    .padding(.bottom)
                    .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                ScrollView(.vertical, showsIndicators: false, content: {
                    if shop.showingProduct == false && shop.selectedProduct == nil {
                        VStack(spacing:0) {
                            FeaturedTabView().padding(.vertical,20).frame(height: UIScreen.main.bounds.width / 1.475)
                            
                            CategoryGridView()
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products) {
                                    product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            }).padding(15)
                            
                            TitleView(title: "Brands")
                            BrandGridView()
                            
                            FooterView().padding(.horizontal)
                        }
                    } else {
                        ProductDetailView()
                    }
                })// :ScrollView
                
            }// :VStack
            .background(colorBackground.ignoresSafeArea(.all,edges: .all))
        }// :Zstack
        .ignoresSafeArea(.all,edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 8 plus")
            .environmentObject(Shop())
    }
}
