//
//  HomeService.swift
//  ChefDelivery
//
//  Created by Marcio Curvello on 10/09/23.
//

import Foundation

enum RequestError: Error {
    case invalidUrl
    case errorRequest(error: String)
}

struct HomeService {
    func fetchData() async throws -> Result<[StoreType], RequestError> {
        guard let url = URL(string: "https://private-617dc6-mcurvello.apiary-mock.com/home") else {
            return .failure(.invalidUrl)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let storesObject = try JSONDecoder().decode([StoreType].self, from: data)
        
        return .success(storesObject)
    }
    
    func confirmOrder(product: ProductType) async throws -> Result<[String: Any]?, RequestError> {
        guard let url = URL(string: "https://private-617dc6-mcurvello.apiary-mock.com/home") else {
            return .failure(.invalidUrl)
        }
        
        let encodedObject = try JSONEncoder().encode(product)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = encodedObject
        
        let (data, _) = try await URLSession.shared.data(for: request)
        let message = try JSONSerialization.jsonObject(with: data) as? [String: Any]
        
        return .success(message)
    }
}
