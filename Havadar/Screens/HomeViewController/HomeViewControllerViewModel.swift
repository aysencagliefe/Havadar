//
//  HomeViewControllerViewModel.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 13.12.2024.
//

import Foundation

class HomeViewControllerViewModel {
    
    var delegate: HomeViewControllerDelegate?
    
    private let dataProvider: HomeViewControllerProviderProtocol
    
    init(dataProvider: HomeViewControllerProviderProtocol) {
        self.dataProvider = dataProvider
    }
    
    func nowWeather(merkezid: String?) {
        dataProvider.nowWeather(merkezid: merkezid) { result in
            do {
                try self.delegate?.nowReceiveData(_data: result.get().first)
            } catch {
                print("error nowWeather")

            }
        }
        
    }
    
    func todayHourlyWeather(istno: String?) {
        dataProvider.todayHourlyWeather(istno: istno) { result in
            do {
                try self.delegate?.todayHourlyReceiveData(_data: result.get().first)
            } catch {
                print("error todayHourly")
            }
        }
    }
    
    func fiveDaysWeather(istno: String?) {
        dataProvider.fiveDaysWeather(istno: istno)  { result in
            do {
                try self.delegate?.fiveDaysReceiveData(_data: result.get().first)
            } catch {
                print("error fiveDays")
            }
        }
    }
    
    
    func merkezlerWeather(sorgu: String?, limit: String?) {
        dataProvider.merkezlerWeather(sorgu: sorgu, limit: limit) { result in
            do {
                try self.delegate?.merkezlerReceiveData(_data: result.get())
            } catch {
                print("error merkezler")
            }
        }
    }
    
    
}

protocol HomeViewControllerDelegate: AnyObject {
    func nowReceiveData(_data: NowWeatherResponseElement?)
    func todayHourlyReceiveData(_data: TodayHourlyWeatherResponse?)
    func fiveDaysReceiveData(_data: FiveDaysWeatherResponse?)
    func merkezlerReceiveData(_data: MerkezlerWeatherResponse?)
}
