//
//  Shop.swift
//  TouchDown
//
//  Created by Fang Sun on 2021-09-02.
//

import Foundation

class Shop:ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}
