//
//  ResponseWrapper.swift
//  NetworkSeparateCode
//
//  Created by HESSEGG on 2023/02/27.
//

import Foundation

struct ResponseWrapper<T: Decodable>: Decodable {
    let data: T?
    let message: String?
}
