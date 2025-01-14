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
        completion: @escaping NetworkCompletion<[NowWeatherResponseElement]>
    )
    
    func todayHourlyWeather(
        istno: String?,
        completion: @escaping NetworkCompletion<[TodayHourlyWeatherResponse]>
    )
    
    func fiveDaysWeather (
        istno: String?,
    completion: @escaping NetworkCompletion<[FiveDaysWeatherResponse]>
    )
    
    func merkezlerWeather(
        sorgu: String?,
        limit: String?,
        completion: @escaping NetworkCompletion<MerkezlerWeatherResponse>
    )
    
}
