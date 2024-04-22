//   Created on 2024/04/22
//   Using Swift 5.0
//   Subway.swift
//   Created by Owen
  

import Foundation

struct Subway: Codable {
    let searchSTNBySubwayLineInfo: SearchSTNBySubwayLineInfo
}

// MARK: - SearchSTNBySubwayLineInfo
struct SearchSTNBySubwayLineInfo: Codable {
    let listTotalCount: String
    let result: Result
    let row: [Row]
}

// MARK: - Result
struct Result: Codable {
    let code, message: String
}

// MARK: - Row
struct Row: Codable {
    let stationNm, lineNum: String
}
