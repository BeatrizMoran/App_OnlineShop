//
//  CartItemModel.swift
//  App_OnlineShop
//
//  Created by  on 31/3/25.
//

import Foundation

struct ElementoCarrito: Identifiable, Codable {
    var id: Int
    var product: Producto
    var cantidad: Int
}
