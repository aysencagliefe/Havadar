//
//  TodayHourlyResponse.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 5.12.2024.
//

import Foundation

struct TodayHourlyWeatherResponse: Codable {
    let baslangicZamani: String
    let istNo: Int
    let merkez: String
    let tahmin: [Tahmin]
}

struct Tahmin: Codable {
    let tarih, hadise: String
    let sicaklik, hissedilenSicaklik, nem, ruzgarYonu: Int
    let ruzgarHizi, maksimumRuzgarHizi: Int
}
