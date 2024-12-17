//
//  HomeViewControllerDataProvider.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 13.12.2024.
//

import Foundation

class HomeViewControllerDataProvider: HomeViewControllerProviderProtocol {
   
    let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol = NetworkService.shared) {
        self.networkService = networkService
    }
    
    func nowWeather(merkezid: String?, completion: @escaping NetworkCompletion<NowWeatherResponse>) {
    
        let url = "https://servis.mgm.gov.tr/web/sondurumlar/merkezid"
        
        var urlComponents = URLComponents(string: url)!
        urlComponents.queryItems = [
            URLQueryItem(name: "merkezid", value: merkezid)
        ]
        guard let urlString = urlComponents.url?.absoluteString else { return }
        
        let request = NetworkUrlRequest(
            url: urlString,
            httpMethod: .get)
        networkService.executeRequest(
            request: request,
            responseModelType: NowWeatherResponse.self,
            completion: completion)
    
    }
    
    func merkezlerWeather(sorgu: String?, limit: String?, completion: @escaping NetworkCompletion<MerkezlerWeatherResponse>) {
        
        let url = "https://servis.mgm.gov.tr/web/merkezler"
        
        var urlComponents = URLComponents(string: url)!
        urlComponents.queryItems = [
            URLQueryItem(name: "sorgu", value: sorgu),
            URLQueryItem(name: "limit", value: limit)
        ]
        guard let urlString = urlComponents.url?.absoluteString else { return }
        
        let request = NetworkUrlRequest(
            url: urlString,
            httpMethod: .get)
        networkService.executeRequest(
            request: request,
            responseModelType: MerkezlerWeatherResponse.self,
            completion: completion)
    

    }
}
