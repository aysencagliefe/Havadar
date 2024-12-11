//
//  NetworkRequestProtocol.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 3.12.2024.
//

import Foundation
import Alamofire

protocol NetworkRequestProtocol {
    associatedtype Element: Encodable
    
    var url: URLConvertible { get }
    var httpMethod: HTTPMethod { get }
    var requestModel: Element? { get }
    var headers: [HTTPHeader]? { get }
}
