//
//  SearchCitiesProviderProtocol.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 23.01.2025.
//

import Foundation

protocol SearchCitiesProviderProtocol {
    
    func searchCity(
        il: String?,
        completion: @escaping NetworkCompletion<[SearchCitiesResponse]>
    )
}
