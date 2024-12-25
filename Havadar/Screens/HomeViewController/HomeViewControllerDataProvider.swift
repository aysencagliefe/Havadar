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
    
    func nowWeather(merkezid: String?, completion: @escaping NetworkCompletion<[NowWeatherResponseElement]>) {
    
        let url = "https://servis.mgm.gov.tr/web/sondurumlar"
        
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
            responseModelType: [NowWeatherResponseElement].self,
            completion: completion)
    
    }
    
    func todayHourlyWeather(istno: String?, completion: @escaping NetworkCompletion<[TodayHourlyWeatherResponse]>) {
    
        
        let url = "https://servis.mgm.gov.tr/web/tahminler/saatlik"
        
        var urlComponents = URLComponents(string: url)!
        urlComponents.queryItems = [
            URLQueryItem(name: "istno", value: istno)
        ]
        guard let urlString = urlComponents.url?.absoluteString else { return }
        
        let request = NetworkUrlRequest(
            url: urlString,
            httpMethod: .get)
        networkService.executeRequest(
            request: request,
            responseModelType: [TodayHourlyWeatherResponse].self,
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
