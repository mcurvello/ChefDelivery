//
//  StoreType.swift
//  ChefDelivery
//
//  Created by Marcio Curvello on 08/09/23.
//

import Foundation

struct StoreType: Identifiable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}
