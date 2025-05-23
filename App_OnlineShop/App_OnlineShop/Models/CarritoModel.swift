//
//  CartModel.swift
//  App_OnlineShop
//
//  Created by  on 31/3/25.
//
import SwiftUI

class Carrito: ObservableObject {
    @Published var elementos: [ElementoCarrito] = []
    
    func agregarElemento(_ producto: Producto) {
        if let index = elementos.firstIndex(where: { $0.producto.id == producto.id }) {
            elementos[index].cantidad += 1
        } else {
            elementos.append(ElementoCarrito(id: producto.id, producto: producto, cantidad: 1))
        }
    }
        
    func precioTotal() -> Double {
        return elementos.reduce(0) { $0 + ($1.producto.price * Double($1.cantidad)) }
    }
    
    func eliminarElemento(id: Int) {
        if let index = elementos.firstIndex(where: { $0.id == id }) {
            elementos.remove(at: index)
        }
    }
}
