//
//  ErrorResponseModel.swift
//  NetworkSeparateCode
//
//  Created by HESSEGG on 2023/02/27.
//

import Foundation

//struct ErrorResponseModel : Codable {
//
//    let code : Int?
//    let message : String?
//
//    enum CodingKeys: String, CodingKey {
//
//        case code = "code"
//        case message = "message"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        code = try values.decodeIfPresent(Int.self, forKey: .code)
//        message = try values.decodeIfPresent(String.self, forKey: .message)
//    }
//}

struct ErrorResponseModel : Codable {
    
    let data : String?
    let message : String?

    enum CodingKeys: String, CodingKey {

        case data = "data"
        case message = "message"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(String.self, forKey: .data)
        message = try values.decodeIfPresent(String.self, forKey: .message)
    }
}
