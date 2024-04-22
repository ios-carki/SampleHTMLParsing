//
//  RequestWrapper.swift
//  Klaatoo
//
//  Created by HESSEGG on 2023/06/14.
//

import Foundation

struct RegisterUserRequestWrapper<T: Decodable>: Decodable {
    let addresses: T?
}
