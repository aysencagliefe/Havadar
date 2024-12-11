//
//  NetworkError.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 3.12.2024.
//

import Foundation

enum NetworkError: Error {
    case reachabilityError
    case parseError
    case internalServerError
    case badRequestError
    case unknown
    
    var localizedDescription: String {
        switch self {
        case .reachabilityError:
            return "popup_lostinternet_info_text".localized
        default:
            return "Unexpected error."
        }
    }
}
