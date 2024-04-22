//
//  RestErrorResponse.swift
//  NetworkSeparateCode
//
//  Created by HESSEGG on 2023/02/27.
//

import Foundation

import Alamofire

struct RestErrorResponse: Codable {
    
    let data: String
    let message: String
    
    init(data: String, message: String) {
        self.data = data
        self.message = message
    }
}

struct TestRestErrorResponse: Codable {
    
    let data: String
    let message: String
    
    init(data: String, message: String) {
        self.data = data
        self.message = message
    }
}

struct RestErrorResponseMessage: Encodable, Error {
    let message: String
    
    init(message: String) {
        self.message = message
    }
}
//struct RestErrorData: Encodable, Error {
//    let address: String
//    let balance: Int
//    let coin_id: String
//    let denom: String
//
//    init(address: String, balance: Int, coin_id: String, denom: String) {
//        self.address = address
//        self.balance = balance
//        self.coin_id = coin_id
//        self.denom = denom
//    }
//}
