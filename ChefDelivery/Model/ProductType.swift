//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Marcio Curvello on 08/09/23.
//

import Foundation

struct ProductType: Identifiable, Codable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "R$ " + price.formatPrice()
    }
}
