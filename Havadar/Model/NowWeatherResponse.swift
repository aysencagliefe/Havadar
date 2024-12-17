//
//  NowWeatherResponse.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 16.12.2024.
//

import Foundation

struct NowWeatherResponse: Codable {
    let aktuelBasinc, denizSicaklik, denizeIndirgenmisBasinc, gorus: Int
    let hadiseKodu: String
    let istNo, kapalilik, karYukseklik, nem: Int
    let rasatMetar, rasatSinoptik, rasatTaf: String
    let ruzgarHiz: Double
    let ruzgarYon: Int
    let sicaklik: Double
    let veriZamani: String
    let yagis00Now, yagis10Dk, yagis12Saat, yagis1Saat: Int
    let yagis24Saat, yagis6Saat: Int
    let denizVeriZamani: String
}
