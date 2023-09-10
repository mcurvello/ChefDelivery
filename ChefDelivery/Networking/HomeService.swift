//
//  HomeService.swift
//  ChefDelivery
//
//  Created by Marcio Curvello on 10/09/23.
//

import Foundation

struct HomeService {
    func fetchData() {
        guard let url = URL(string: "https://private-617dc6-mcurvello.apiary-mock.com/home") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) {data, _, error in
            if let error = error {
                print(error.localizedDescription)
            }
            else if let data = data {
                let storesObject = try? JSONDecoder().decode([StoreType].self, from: data)
                print(storesObject)
            }
        }
        .resume()
    }
}
