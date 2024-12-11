//
//  String+Extension.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 3.12.2024.
//

import Foundation

extension String {
    var localized: String {
        get {
            NSLocalizedString(self, comment: "")
        }
    }
}
