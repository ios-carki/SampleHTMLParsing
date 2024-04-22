//
//  RestEnvironment.swift
//  Wallet
//
//  Created by HESSEGG on 2023/04/13.
//

import Foundation

public enum RestEnvironment {
    case develop
    case service
    
    var baseURL: String {
        switch self {
        case .develop:
            return "openapi.seoul.go.kr"
        case .service:
            return "openapi.seoul.go.kr"
        }
    }
}
