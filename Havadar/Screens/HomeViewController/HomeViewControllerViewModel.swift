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
                try self.delegate?.nowReceiveData(_data: result.get().data)
            } catch {
                print("error nowWeather")

            }
        }
        
    }
    
    func merkezlerWeather(sorgu: String?, limit: String?) {
        dataProvider.merkezlerWeather(sorgu: sorgu, limit: limit) { result in
            do {
                try self.delegate?.merkezlerReceiveData(_data: result.get().data)
            } catch {
                print("error merkezler")
            }
        }
    }
    
    
}

protocol HomeViewControllerDelegate: AnyObject {
    func nowReceiveData(_data: NowWeatherResponse?)
    func merkezlerReceiveData(_data: MerkezlerWeatherResponse?)
}
