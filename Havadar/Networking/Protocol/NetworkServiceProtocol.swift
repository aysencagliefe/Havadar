//
//  NetworkServiceProtocol.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 3.12.2024.
//

import Foundation
import Alamofire


typealias NetworkCompletion<T: Decodable> = (Result<BaseResponse<T>, NetworkError>) -> Void
typealias NetworkCompletionNoneResponse = (Result<BaseResponse<Never>, NetworkError>) -> Void

protocol NetworkServiceProtocol: AnyObject {
    func executeRequest<T: NetworkRequestProtocol, U: Decodable>(
        request: T,
        responseModelType: U.Type,
        isAuthNeeded: Bool,
        completion: @escaping NetworkCompletion<U>
    )
    
    func executeRequest<T: NetworkRequestProtocol>(
        request: T,
        isAuthNeeded: Bool,
        completion: @escaping NetworkCompletionNoneResponse
    )
}

extension NetworkServiceProtocol {
    func executeRequest<T: NetworkRequestProtocol, U: Decodable>(
        request: T,
        responseModelType: U.Type,
        completion: @escaping NetworkCompletion<U>
    ) {
        executeRequest(
            request: request,
            responseModelType: responseModelType,
            isAuthNeeded: true,
            completion: completion
        )
    }
    
    func executeRequest<T: NetworkRequestProtocol>(
        request: T,
        completion: @escaping NetworkCompletionNoneResponse
    ) {
        executeRequest(
            request: request,
            isAuthNeeded: true,
            completion: completion
        )
    }
}
