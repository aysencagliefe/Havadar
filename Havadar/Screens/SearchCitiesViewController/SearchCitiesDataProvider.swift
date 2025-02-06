//
//  SearchCitiesDataProvider.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 23.01.2025.
//


import Foundation

class SearchCitiesDataProvider: SearchCitiesProviderProtocol {
    
    let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol = NetworkService.shared) {
        self.networkService = networkService
    }
    
    func searchCity(il: String?, completion: @escaping NetworkCompletion<[SearchCitiesResponse]>) {
        
        let url = "https://servis.mgm.gov.tr/web/merkezler"
        
        var urlComponents = URLComponents(string: url)!
        urlComponents.queryItems = [
            URLQueryItem(name: "il", value: il)
        ]
        guard let urlString = urlComponents.url?.absoluteString else { return }
        
        let request = NetworkUrlRequest(
            url: urlString,
            httpMethod: .get)
        networkService.executeRequest(
            request: request,
            responseModelType: [SearchCitiesResponse].self,
            completion: completion)
    }
    
}
