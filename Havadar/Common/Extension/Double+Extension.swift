//
//  Double+Extension.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 20.01.2025.
//

extension Double {
    func toFormattedString(withDecimalPlaces places: Int) -> String {
        return String(format: "%.\(places)f", self)
    }
}

