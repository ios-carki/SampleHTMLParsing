//
//  ModuleFirstRemoteService.swift
//  ios-code-base
//
//  Created by Esat Gözcü on 24.03.2022.
//

import UIKit
import Alamofire

// MARK: - Networking call within this class will happen
struct RestServices {
    //MARK: apps/ios/versions/latest
    func test(start startIndex: String, end endIndex: String, stationCode: String? = nil, stationName: String? = nil, lineNumber: String? = nil, completion: @escaping ([Row]) -> Void) {
        let path = EndPoints.subway.getStation
        
        let finalPath = path
            .replacingOccurrences(of: "{START_INDEX}", with: startIndex)
            .replacingOccurrences(of: "{END_INDEX}", with: endIndex)
            .replacingOccurrences(of: "{STATION_CD}", with: stationCode ?? " ")
            .replacingOccurrences(of: "{STATION_NM}", with: stationName ?? " ")
            .replacingOccurrences(of: "{LINE_NUM}", with: lineNumber ?? " ")
    
        print("finalPath: ", finalPath)

        let event = API(
            path: finalPath,
            method: .get
        )
        
        BaseNetworking.shared.noParamRequest(endPoint: event, completion: completion)
    }
}
