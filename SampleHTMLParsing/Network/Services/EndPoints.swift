//
//  EndPoints.swift
//  ios-code-base
//
//  Created by Esat Gözcü on 24.03.2022.
//

import Foundation

/// will be responsible for holding the end points name
/// also will help to separate the endpoints by its controller/feature
struct EndPoints {
    struct subway {
        static var getStation: String { get { return "/\(APIKey.key)/xml/SearchSTNBySubwayLineInfo/{START_INDEX}/{END_INDEX}/{STATION_CD}/{STATION_NM}/{LINE_NUM}"}}
    }
}
