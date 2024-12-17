//
//  HomeViewControllerProviderProtocol.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 13.12.2024.
//

import Foundation

protocol HomeViewControllerProviderProtocol {
    
    func nowWeather(
        merkezid: String?,
        completion: @escaping NetworkCompletion<NowWeatherResponse>
    )
    
    func merkezlerWeather(
        sorgu: String?,
        limit: String?,
        completion: @escaping NetworkCompletion<MerkezlerWeatherResponse>
    )
}
