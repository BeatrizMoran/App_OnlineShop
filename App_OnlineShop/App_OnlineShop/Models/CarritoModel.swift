//
//  CartModel.swift
//  App_OnlineShop
//
//  Created by  on 31/3/25.
//
import SwiftUI

class Carrito: ObservableObject {
    @Published var elementos: [ElementoCarrito] = []
}
