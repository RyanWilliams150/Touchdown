//
//  Shop.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/7/24.
//

import Foundation


class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
