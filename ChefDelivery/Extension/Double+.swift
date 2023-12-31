//
//  Double+.swift
//  ChefDelivery
//
//  Created by Marcio Curvello on 08/09/23.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
