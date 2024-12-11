//
//  TodayHourlyResponse.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 5.12.2024.
//

import Foundation

struct TodayHourlyResponse: Codable {
    let baslangicZamani: String
    let istNo: Int
    let merkez: String
    let tahmin: [Tahmin]
}

// MARK: - Tahmin
struct Tahmin: Codable {
    let tarih: String
    let hadise: Hadise
    let sicaklik, hissedilenSicaklik, nem, ruzgarYonu: Int
    let ruzgarHizi, maksimumRuzgarHizi: Int
}

enum Hadise: String, Codable {
    case cb = "CB"
    case pb = "PB"
    case pus = "PUS"
}
